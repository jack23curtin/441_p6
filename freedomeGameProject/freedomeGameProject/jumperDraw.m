//
//  jumperDraw.m
//  project_5
//
//  Created by Jack Curtin on 3/28/21.
//

#import "jumperDraw.h"




@implementation jumperDraw
@synthesize jumper_x, jumper_y;
@synthesize box_x, box_y;
@synthesize coin_x, coin_y;


@synthesize LR_jump;

@synthesize endGame;

@synthesize resetButton;

@synthesize currentScore;

@synthesize currentScoreInt;

@synthesize highScoreStr;

@synthesize highScoreInt;

@synthesize collectedCoin;

@synthesize numLoops;









// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.



- (void)drawRect:(CGRect)rect {
    // Drawing code
    /*
    if(endGame == YES){
        endGame = YES;
    }else{
        endGame = NO;
    }*/
    if(numLoops == 0){
        jumper_x = 25;
        jumper_y = 500;
        LR_jump = YES;
    }
    
    endGame = NO;
    resetButton.hidden = YES;
    
    //NSLog(@"Redraw jumperDraw");
    //CGRect bounds = [self bounds];
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(jumper_x, jumper_y, 20, 20));
    
    [[UIColor brownColor] setFill];
    CGContextFillRect(context, CGRectMake(box_x, box_y, 25, 25));
    
    
    if(collectedCoin == YES){
        [[UIColor yellowColor] setFill];
        CGContextFillEllipseInRect(context, CGRectMake(coin_x, coin_y, 0, 0));
    }else{
        [[UIColor yellowColor] setFill];
        CGContextFillEllipseInRect(context, CGRectMake(coin_x, coin_y, 15, 15));
    }
    
    [[UIColor grayColor] setFill];
    CGContextFillRect(context, CGRectMake(0, 0, 25, 800));
    
    [[UIColor grayColor] setFill];
    CGContextFillRect(context, CGRectMake(350, 0, 25, 800));

    
    if(fabsf(box_x - jumper_x) < 25 && fabsf(box_y - jumper_y) < 25){
        [[UIColor purpleColor] setFill];
        CGContextFillEllipseInRect(context, CGRectMake(jumper_x, jumper_y, 20, 20));
        endGame = YES;
        resetButton.hidden = NO;
    }
    if(fabsf(coin_x - jumper_x) < 50 && fabsf(coin_y - jumper_y) < 50 && collectedCoin == NO && numLoops > 0){
        collectedCoin = YES;
        
        currentScoreInt = currentScoreInt + 25;
        NSString* myNewString = [NSString stringWithFormat:@"%i", currentScoreInt];
        [currentScore setText:myNewString];
        
        if(currentScoreInt > highScoreInt){
            highScoreInt = highScoreInt + 25;
            NSString* myNewString2 = [NSString stringWithFormat:@"Highscore: %i", highScoreInt];
            [highScoreStr setText:myNewString2];
        }
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    for(UITouch *t in touches){
        //CGPoint p = [t locationInView:self];
        //NSLog(@"Touch %f , %f", p.x, p.y);
        //jumper_x = p.x;
        //jumper_y = p.y;
        if(jumper_x > 320 || jumper_x < 35){
            if(LR_jump == YES){
                LR_jump = NO;
            }else{
                LR_jump = YES;
            }
        }

        
        [self setNeedsDisplay];
    }
}

- (void)animateJump{
    numLoops += 1;
    if(endGame == YES){
        jumper_y = 500;
        resetButton.hidden = NO;
    }else{
        jumper_y = 500;
        if(LR_jump == YES){
            if(jumper_x < 327){
                //jumper_y = jumper_y + 1;
                jumper_x = jumper_x + 6;
            }
        }
        if(LR_jump == NO){
            if(jumper_x > 25){
                //jumper_y = jumper_y - 1;
                jumper_x = jumper_x - 6;
            }
        }
        if(box_y > 750){
            int rndValue = 30 + arc4random() % (330 - 30);
            box_x = rndValue;
            box_y = 0;
            
            currentScoreInt = currentScoreInt + 5;
            NSString* myNewString = [NSString stringWithFormat:@"%i", currentScoreInt];
            [currentScore setText:myNewString];
            
            if(currentScoreInt > highScoreInt){
                highScoreInt = highScoreInt + 5;
                NSString* myNewString2 = [NSString stringWithFormat:@"Highscore: %i", highScoreInt];
                [highScoreStr setText:myNewString2];
            }

        }else{
            box_y = box_y + 8;
        }
        if(coin_y > 750){
            int rndValue = 30 + arc4random() % (330 - 30);
            coin_x = rndValue;
            coin_y = 0;
            collectedCoin = NO;

        }else{
            coin_y = coin_y + 12;
        }
    }
    [self setNeedsDisplay];
}

- (IBAction)fun_reset:(id)sender
{
    numLoops = 0;
    
    box_y = 0;
    int rndValue = 30 + arc4random() % (330 - 30);
    box_x = rndValue;
    
    coin_y = 0;
    int rndValue2 = 30 + arc4random() % (330 - 30);
    coin_x = rndValue2;
    
    
    jumper_x = 25;
    jumper_y = 500;
    
    currentScoreInt = 0;
    NSString* myNewString = [NSString stringWithFormat:@"%i", currentScoreInt];

    [currentScore setText:myNewString];
    
    

}



@end
