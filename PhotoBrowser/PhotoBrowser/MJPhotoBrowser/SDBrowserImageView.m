//
//  SDBrowserImageView.m
//  SDPhotoBrowser
//
//  Created by aier on 15-2-6.
//  Copyright (c) 2015年 GSD. All rights reserved.
//

#import "SDBrowserImageView.h"
#import "MJPhotoBrowser.h"
#import "MJPhoto.h"

@implementation SDBrowserImageView
{
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initSetting];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initSetting];
    }
    return self;
}

- (void)initSetting
{
    self.userInteractionEnabled = YES;
    
    // 点击手势
    UITapGestureRecognizer *tapGuesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTapGuesture:)];
    [self addGestureRecognizer:tapGuesture];
}

#pragma mark -
#pragma mark - 点击手势
- (void)imageTapGuesture:(UIGestureRecognizer *)guesture
{
    NSMutableArray *photoArray = [NSMutableArray new];
    MJPhotoBrowser *photoBrowser = [[MJPhotoBrowser alloc] init];
    for (NSString *imageURL in _imageURLArray) {
        MJPhoto *photo = [[MJPhoto alloc] init];
        photo.url = [NSURL URLWithString:imageURL];
        [photoArray addObject:photo];
    }

    photoBrowser.photos = photoArray;
    photoBrowser.currentPhotoIndex = _currShowImageIndex;
    [photoBrowser show];

}

@end
