//
//  UIImage+WithoutRendering.h
//  17_01_10_彩票项目
//
//  Created by 姚懿恒 on 2017/1/11.
//  Copyright © 2017年 姚懿恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WithoutRendering)

+ (UIImage *)imageWithoutRendering:(NSString *)imageName;

+ (UIImage *)imageWithStretched:(NSString *)imageName;

//返回一张经过裁剪的圆形图片
- (instancetype)yyh_circleImage;

+ (instancetype)yyh_circleImageNamed:(NSString *)name;
@end
