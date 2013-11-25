//
//  BetStakeConfirmVC.m
//  iBetchyu
//
//  Created by Betchyu Computer on 11/24/13.
//  Copyright (c) 2013 Betchyu Computer. All rights reserved.
//

#import "BetStakeConfirmVC.h"

@interface BetStakeConfirmVC ()

@end

@implementation BetStakeConfirmVC


@synthesize stakeImageHeight;
@synthesize bet;

- (id)initWithBet:(TempBet *)betObj {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
        stakeImageHeight = 280;
        bet = betObj;
    }
    return self;
}

- (void) loadView {
    // Create main UIScrollView (the container for what follows)
    UIScrollView *mainView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    mainView.contentSize   = CGSizeMake(320, 1000);
    [mainView setBackgroundColor:[UIColor darkGrayColor]];
    
    
    UIImageView *stakePic = [[UIImageView alloc] initWithImage:
                             [UIImage imageNamed:
                              [bet.ownStakeType stringByAppendingString:@".jpg"]]];
    stakePic.frame = CGRectMake(0, 0, 320, stakeImageHeight);
    /*stakePic.userInteractionEnabled = YES;
    UITapGestureRecognizer *gr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(stakeTapped:)];
    [stakePic addGestureRecognizer:gr];*/
    [mainView addSubview:stakePic];
    
    
    // add the UIScrollView we've been compiling to the actual screen.
    self.view = mainView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
