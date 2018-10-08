//
//  waterRippleController.m
//  水波纹效果
//
//  Created by 刘晓龙 on 2018/10/8.
//  Copyright © 2018年 wajiu. All rights reserved.
//

#import "waterRippleController.h"
#import "waterView.h"
#define wj_width [UIScreen mainScreen].bounds.size.width
#define wj_height [UIScreen mainScreen].bounds.size.height

@interface waterRippleController ()

@end

@implementation waterRippleController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"水波纹";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    waterView* water = [[waterView alloc]initWithFrame:CGRectMake(0, 0, wj_width, 200)];
    water.backgroundColor = [UIColor blackColor];
    [self.view addSubview:water];
    
}



@end
