//
//  ViewController.m
//  IoT
//
//  Created by Zheng Lin on 24/01/2015.
//  Copyright (c) 2015 SeedHack. All rights reserved.
//

#import "ViewController.h"
#import "MainCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSArray *myData;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myData = [[NSArray alloc] initWithObjects:@"dry",@"yes",@"good", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return myData.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MainCollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"myCell"
                                    forIndexPath:indexPath];
    
    myCell.name.text = myData[indexPath.row];
    myCell.layer.borderColor = [UIColor blackColor].CGColor;
    myCell.layer.borderWidth = 3.0f;
    
    return myCell;
}

@end
