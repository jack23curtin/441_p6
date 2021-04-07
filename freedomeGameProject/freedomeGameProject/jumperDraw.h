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

@property (nonatomic) float coin_x, coin_y;



@property (nonatomic) bool LR_jump;

@property (nonatomic) bool endGame;

@property (nonatomic, strong) IBOutlet UIButton *resetButton;

@property (nonatomic, strong) IBOutlet UIButton *startButton;


@property (nonatomic, strong) IBOutlet UILabel *currentScore;
@property (nonatomic) bool startBool;




@property (nonatomic) int currentScoreInt;

@property (nonatomic) int highScoreInt;
@property (nonatomic, strong) IBOutlet UILabel *highScoreStr;

@property (nonatomic) bool collectedCoin;





@property (nonatomic) int numLoops;











- (void)animateJump;




@end

NS_ASSUME_NONNULL_END
