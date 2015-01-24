//
//  AddViewController.m
//  IoT
//
//  Created by Zheng Lin on 24/01/2015.
//  Copyright (c) 2015 SeedHack. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
{
    NSMutableArray *selectedItems;
}

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    selectedItems = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)add:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    [selectedItems addObject:@2];
    [self.delegate add:selectedItems];
}
@end
