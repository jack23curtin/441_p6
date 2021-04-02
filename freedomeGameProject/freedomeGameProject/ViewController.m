//
//  ViewController.m
//  freedomeGameProject
//
//  Created by Jack Curtin on 3/28/21.
//

#import "ViewController.h"

#import "ScoreboardViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize link;
@synthesize jumper_draw;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    [link setPreferredFramesPerSecond:15];
    [link setPaused:NO];

    
}

- (void)tick:(CADisplayLink *)sender{
    //NSLog(@"Redraw screen");
    [jumper_draw animateJump];
        


    
}




@end
