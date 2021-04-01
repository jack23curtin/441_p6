//
//  jumperDraw.h
//  freedomeGameProject
//
//  Created by Jack Curtin on 3/28/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



@interface jumperDraw : UIView

@property (nonatomic) float jumper_x, jumper_y;

@property (nonatomic) float box_x, box_y;


@property (nonatomic) bool LR_jump;


- (void)animateJump;


@end

NS_ASSUME_NONNULL_END
