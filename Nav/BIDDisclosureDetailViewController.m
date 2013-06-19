//
//  BIDDisclosureDetailViewController.m
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "BIDDisclosureDetailViewController.h"

@interface BIDDisclosureDetailViewController ()

@end

@implementation BIDDisclosureDetailViewController

- (UILabel *) label
{
    return (id)self.view;
}

- (void) loadView
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    self.view = label;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.label.text = self.message;
}

@end
