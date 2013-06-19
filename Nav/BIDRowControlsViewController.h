//
//  BIDRowControlsViewController.h
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "BIDSecondLevelViewController.h"

@interface BIDRowControlsViewController : BIDSecondLevelViewController

@property (copy, nonatomic) NSArray *characters;

- (IBAction) tappedButton: (UIButton *) sender;

@end
