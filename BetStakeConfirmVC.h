//
//  BetStakeConfirmVC.h
//  iBetchyu
//
//  Created by Betchyu Computer on 11/24/13.
//  Copyright (c) 2013 Betchyu Computer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TempBet.h"

@interface BetStakeConfirmVC : UIViewController

@property int stakeImageHeight;
@property (strong) TempBet *bet;

- (id)initWithBet:(TempBet *)betObj;

@end
