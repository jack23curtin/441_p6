//
//  ScoreboardViewController.m
//  freedomeGameProject
//
//  Created by Jack Curtin on 4/2/21.
//

#import "ScoreboardViewController.h"

@implementation ScoreboardViewController

@synthesize connectorClass;

@synthesize sbLabel;




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    sbLabel.text = connectorClass.stringBeingPassed;
    
    //sbLabel.text = @"Whats up";

}


@end
