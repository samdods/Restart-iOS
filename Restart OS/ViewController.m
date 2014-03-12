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
  
  cell.layer.cornerRadius = 1;
  
  UIView *subView = [[UIView alloc] initWithFrame:cell.bounds];
  [cell addSubview:subView];
  subView.layer.shadowOpacity = 1;
  subView.layer.borderWidth = 1;
  
  return cell;
}

@end
