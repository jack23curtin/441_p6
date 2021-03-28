//
//  jumperDraw.m
//  project_5
//
//  Created by Jack Curtin on 3/28/21.
//

#import "jumperDraw.h"

@implementation jumperDraw
@synthesize jumper_x, jumper_y;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.


- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"Redraw jumperDraw");
    CGRect bounds = [self bounds];
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[UIColor blackColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(jumper_x, jumper_y, 20, 20));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    for(UITouch *t in touches){
        CGPoint p = [t locationInView:self];
        NSLog(@"Touch %f , %f", p.x, p.y);
        jumper_x = p.x;
        jumper_y = p.y;
        [self setNeedsDisplay];
    }
}


@end
