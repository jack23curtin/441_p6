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

@synthesize LR_jump;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

//jumper_x = 51;
//jumper_y = 500;


- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"Redraw jumperDraw");
    //CGRect bounds = [self bounds];
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(jumper_x, jumper_y, 20, 20));
    
    [[UIColor brownColor] setFill];
    CGContextFillRect(context, CGRectMake(box_x, box_y, 20, 20));
    
    if(fabsf(box_x - jumper_x) < 50 && fabsf(box_y - jumper_y) < 50){
        [[UIColor purpleColor] setFill];
        CGContextFillEllipseInRect(context, CGRectMake(jumper_x, jumper_y, 20, 20));
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    for(UITouch *t in touches){
        CGPoint p = [t locationInView:self];
        NSLog(@"Touch %f , %f", p.x, p.y);
        //jumper_x = p.x;
        //jumper_y = p.y;
        
        if(LR_jump == YES){
            LR_jump = NO;
        }else{
            LR_jump = YES;
        }
        
        [self setNeedsDisplay];
    }
}

- (void)animateJump{
    jumper_y = 500;
    if(LR_jump == YES){
        if(jumper_x < 350){
            //jumper_y = jumper_y + 1;
            jumper_x = jumper_x + 4;
        }
    }
    if(LR_jump == NO){
        if(jumper_x > 0){
            //jumper_y = jumper_y - 1;
            jumper_x = jumper_x - 4;
        }
    }
    if(box_y > 750){
        int rndValue = 0 + arc4random() % (350 - 0);
        box_x = rndValue;
        box_y = 0;
    }else{
        box_y = box_y + 8;
    }

    [self setNeedsDisplay];
}


@end
