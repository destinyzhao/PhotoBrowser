//
//  SDBrowserImageView.h
//  SDPhotoBrowser
//
//  Created by aier on 15-2-6.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDBrowserImageView : UIImageView <UIGestureRecognizerDelegate>

/// 图片链接数组
@property (strong, nonatomic) NSMutableArray *imageURLArray;
/// 当前显示图片Index
@property (assign, nonatomic) NSInteger currShowImageIndex;

@end
