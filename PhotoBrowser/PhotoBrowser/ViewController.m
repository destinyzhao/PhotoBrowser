//
//  ViewController.m
//  PhotoBrowser
//
//  Created by Alex on 15/11/11.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "SDBrowserImageView.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet SDBrowserImageView *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_image sd_setImageWithURL:[NSURL URLWithString:@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg"] placeholderImage:nil];
    
    NSMutableArray *photoArray = [NSMutableArray arrayWithObjects:@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg", nil];
    _image.imageURLArray = photoArray;
    _image.currShowImageIndex = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
