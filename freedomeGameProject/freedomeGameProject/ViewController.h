//
//  ViewController.h
//  freedomeGameProject
//
//  Created by Jack Curtin on 3/28/21.
//

#import <UIKit/UIKit.h>

#import "jumperDraw.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) CADisplayLink *link;

@property (nonatomic, strong) IBOutlet jumperDraw *jumper_draw;

@end

