//
//  BIDDeleteMeViewController.m
//  Nav
//
//  Created by panda zheng on 13-4-29.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "BIDDeleteMeViewController.h"

static NSString *CellIdentifier = @"Cell";

@interface BIDDeleteMeViewController ()

@end

@implementation BIDDeleteMeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Delete Me";
        self.rowImage = [UIImage imageNamed:@"deleteMeIcon.png"];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"computers" ofType:@"plist"];
        self.computers = [[NSMutableArray alloc] initWithContentsOfFile:path];
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Table Data Source Methods
- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = self.computers[indexPath.row];
    return cell;
}

- (void) tableView: (UITableView *) tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.computers removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

@end


