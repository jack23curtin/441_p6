//
//  ScoreboardViewController.h
//  freedomeGameProject
//
//  Created by Jack Curtin on 4/2/21.
//

#import <UIKit/UIKit.h>

#import "Connector.h"


NS_ASSUME_NONNULL_BEGIN

@interface ScoreboardViewController : UIView

@property (nonatomic, strong) IBOutlet UILabel *sbLabel;

@property (nonatomic, strong)Connector *connectorClass;



@end

NS_ASSUME_NONNULL_END
