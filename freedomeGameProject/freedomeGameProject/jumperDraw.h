//
//  jumperDraw.h
//  freedomeGameProject
//
//  Created by Jack Curtin on 3/28/21.
//

#import <UIKit/UIKit.h>

#import "Connector.h"

NS_ASSUME_NONNULL_BEGIN



@interface jumperDraw : UIView

@property (nonatomic) float jumper_x, jumper_y;

@property (nonatomic) float box_x, box_y;


@property (nonatomic) bool LR_jump;

@property (nonatomic) bool endGame;

@property (nonatomic, strong) IBOutlet UIButton *resetButton;

@property (nonatomic, strong) IBOutlet UILabel *currentScore;

@property (nonatomic, strong) IBOutlet UILabel *passedCurrentScore;


@property (nonatomic) int currentScoreInt;





@property (nonatomic, strong)Connector *connectorClass;





- (void)animateJump;

- (void)prepareForSegue;



@end

NS_ASSUME_NONNULL_END
