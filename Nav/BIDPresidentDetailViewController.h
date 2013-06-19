//
//  BIDPresidentDetailViewController.h
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDPresident;
@protocol BIDPresidentDetailViewControllerDelegate;

@interface BIDPresidentDetailViewController : UITableViewController <UITextFieldDelegate>

@property (copy, nonatomic) BIDPresident *president;
@property (weak, nonatomic) id<BIDPresidentDetailViewControllerDelegate> delegate;
@property (assign, nonatomic) NSInteger row;

@property (strong, nonatomic) NSArray *fieldLabels;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)textFieldDone:(id)sender;

@end

@protocol BIDPresidentDetailViewControllerDelegate <NSObject>

- (void)presidentDetailViewController:(BIDPresidentDetailViewController *)controller
                   didUpdatePresident:(BIDPresident *)president;

@end