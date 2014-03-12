//
//  ViewController.m
//  Restart OS
//
//  Created by Sam Dods on 12/03/2014.
//  Copyright (c) 2014 Sam Dods. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
  return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
  UIView *subView = [[UIView alloc] initWithFrame:cell.bounds];
  [cell addSubview:subView];
  
  // The following 3 lines of code cause the crash, all three lines are required.
  cell.layer.cornerRadius = 1;
  subView.layer.shadowOpacity = 1;
  subView.layer.borderWidth = 1;
  
  return cell;
}

@end
