//
//  YStabBarController.m
//  YSmusic
//
//  Created by Brent-mac on 15/4/13.
//  Copyright (c) 2015年 brent－mac. All rights reserved.
//

#import "YStabBarController.h"

@interface YStabBarController ()

@end

@implementation YStabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildView];
}

- (void)addChildView{
    
    [self addChildVCWithSBName:@"find" title:@"发现" norImageName:@"cm2_btm_icn_discovery_prs" selectedImageName:nil];
    
    [self addChildVCWithSBName:@"account" title:@"账号" norImageName:@"cm2_btm_icn_account_prs" selectedImageName:nil];
}


// 通过一个SB创建控制器
- (void)addChildVCWithSBName:(NSString *)sbName  title:(NSString *)title norImageName:(NSString *)norImageName selectedImageName:(NSString *)selectedImageName{
    // 1.加载Storyboard
    UIStoryboard *sb = [UIStoryboard storyboardWithName:sbName bundle:nil];
    // 2.创建Storyboard中的初始控制器
    UINavigationController *nav = sb.instantiateInitialViewController;
    // 3.调用addChildVCWithController
    [self addChildVCWithController:nav.topViewController title:title norImageName:norImageName selectedImageName:selectedImageName];
}

// 设置指定控制器的相关属性
- (void)addChildVCWithController:(UIViewController *)vc  title:(NSString *)title norImageName:(NSString *)norImageName selectedImageName:(NSString *)selectedImageName{
    // 设置标题
    vc.tabBarItem.title = title;
    vc.navigationItem.title = title;
    // 设置默认图片
    vc.tabBarItem.image = [UIImage imageNamed:norImageName];
    // 设置选中图片
    vc.tabBarItem.selectedImage =  [UIImage imageNamed:selectedImageName];
    // 设置随机色
    //    vc.view.backgroundColor = YSrandomColor;
    // 添加到父控件
    [self addChildViewController:vc.navigationController];
}

@end
