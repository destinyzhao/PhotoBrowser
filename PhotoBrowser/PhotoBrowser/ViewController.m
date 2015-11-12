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
    
    NSMutableArray *photoArray = [NSMutableArray arrayWithObjects:@"http://pic2.ooopic.com/01/03/51/25b1OOOPIC19.jpg",@"http://a.hiphotos.baidu.com/image/pic/item/f9198618367adab48ab4623a89d4b31c8701e467.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/9f2f070828381f30257df4d0ab014c086e06f067.jpg",@"http://c.hiphotos.baidu.com/image/pic/item/242dd42a2834349be1612b8dcbea15ce36d3be57.jpg", nil];
    _image.imageURLArray = photoArray;
    _image.currShowImageIndex = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
