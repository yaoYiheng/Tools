//
//  UIImage+ImageWithBoarder.h
//  16_12_24_定时器
//
//  Created by 姚懿恒 on 2016/12/26.
//  Copyright © 2016年 姚懿恒. All rights reserved.
//
//功能:输入参数, 返回一张带有指定宽度与颜色的被裁剪的圆形图片.

#import <UIKit/UIKit.h>

@interface UIImage (ImageWithBoarder)

+ (instancetype)imageWithBoarder: (CGFloat)boarder boardColor: (UIColor *)boardColor image:(UIImage *)image;

@end
