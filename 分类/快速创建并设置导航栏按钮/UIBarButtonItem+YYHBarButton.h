/*
    快速设置导航栏

 */

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YYHBarButton)

/**
 创建并返回一个导航栏按钮的实例方法

 @param image 正常状态下按钮
 @param selectedImage 选中状态下按钮
 @param target 源对象
 @param action 实现的方法
 @return 一个创建好的正常/高亮状态下的导航栏按钮
- (instancetype)initWithImage:(NSString *)image highlightedImage: (NSString *)highlightedImage target:(id)target action:(SEL)action;


/**
 创建并返回一个导航栏按钮的类方法

 @param image 正常状态下按钮
 @param selectedImage 选中状态下按钮
 @param target 源对象
 @param action 实现的方法
 @return 一个创建好的正常/高亮状态下的导航栏按钮
 */
+ (instancetype)barButtonWithImage:(NSString *)image highlightedImage: (NSString *)highlightedImage target:(id)target action:(SEL)action;


/**
 创建并返回一个导航栏按钮的类方法

 @param image 正常状态下按钮
 @param selectedImage 选中状态下按钮
 @param target 源对象
 @param action 实现的方法
 @return 一个创建好的正常/选中状态下的导航栏按钮
 */
+ (instancetype)barButtonWithImage:(NSString *)image selectedImage: (NSString *)selectedImage target:(id)target action:(SEL)action;


/**
 创建并返回一个导航栏按钮的类方法

 @param image 正常状态下按钮
 @param selectedImage 选中状态下按钮
 @param target 源对象
 @param action 实现的方法
 @param title 按钮的标题
 @return  @return 一个创建好的正常/高亮状态, 并带有标题的导航栏按钮
 */
+ (instancetype)barButtonWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action title: (NSString *)title;
@end
