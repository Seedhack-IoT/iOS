//
//  AddViewController.h
//  IoT
//
//  Created by Zheng Lin on 24/01/2015.
//  Copyright (c) 2015 SeedHack. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddViewControllerDelegate <NSObject>
-(void)cancelled;
-(void)add:(NSArray *)items;
@end
@interface AddViewController : UIViewController
@property (nonatomic, weak) id<AddViewControllerDelegate> delegate;

- (IBAction)add:(id)sender;
@end
