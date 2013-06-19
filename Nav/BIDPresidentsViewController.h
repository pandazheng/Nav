//
//  BIDPresidentsViewController.h
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "BIDSecondLevelViewController.h"
#import "BIDPresidentDetailViewController.h"

@interface BIDPresidentsViewController : BIDSecondLevelViewController
<BIDPresidentDetailViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *presidents;

@end
