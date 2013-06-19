//
//  BIDDisclosureButtonViewController.h
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "BIDSecondLevelViewController.h"

@class BIDDisclosureDetailViewController;

@interface BIDDisclosureButtonViewController : BIDSecondLevelViewController

@property (copy, nonatomic) NSArray *movies;
@property (strong, nonatomic) BIDDisclosureDetailViewController *detailController;

@end
