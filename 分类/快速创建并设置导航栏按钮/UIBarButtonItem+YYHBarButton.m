

#import "UIBarButtonItem+YYHBarButton.h"

#pragma clang diagnostic ignored "-Wobjc-designated-initializers" 
@implementation UIBarButtonItem (YYHBarButton)
- (instancetype)initWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action{

    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [barButton setImage:[UIImage imageWithoutRendering:image] forState:UIControlStateNormal];
    [barButton setImage:[UIImage imageWithoutRendering:highlightedImage] forState:UIControlStateHighlighted];
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [barButton sizeToFit];
    //为什么这里需要添加一个container, 是因为如果将UIButton包装成UIBarButtonItem, 就会导致点击区域变大
    UIView *container = [[UIView alloc] initWithFrame:barButton.bounds];
    [container addSubview:barButton];

    return [[UIBarButtonItem alloc] initWithCustomView:container];;

}

+ (instancetype)barButtonWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action{
    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [barButton setImage:[UIImage imageWithoutRendering:image] forState:UIControlStateNormal];
    [barButton setImage:[UIImage imageWithoutRendering:highlightedImage] forState:UIControlStateHighlighted];
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [barButton sizeToFit];
    //为什么这里需要添加一个container, 是因为如果将UIButton包装成UIBarButtonItem, 就会导致点击区域变大
    UIView *container = [[UIView alloc] initWithFrame:barButton.bounds];
    [container addSubview:barButton];

    return [[UIBarButtonItem alloc] initWithCustomView:container];

}

/**
 按钮选中状态

 */
+ (instancetype)barButtonWithImage:(NSString *)image selectedImage:(NSString *)selectedImage target:(id)target action:(SEL)action{
    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [barButton setImage:[UIImage imageWithoutRendering:image] forState:UIControlStateNormal];
    [barButton setImage:[UIImage imageWithoutRendering:selectedImage] forState:UIControlStateSelected];
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [barButton sizeToFit];
    //为什么这里需要添加一个container, 是因为如果将UIButton包装成UIBarButtonItem, 就会导致点击区域变大
    UIView *container = [[UIView alloc] initWithFrame:barButton.bounds];
    [container addSubview:barButton];

    return [[UIBarButtonItem alloc] initWithCustomView:container];
    
}

+ (instancetype)barButtonWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action title: (NSString *)title{
    UIButton *barButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [barButton setImage:[UIImage imageWithoutRendering:image] forState:UIControlStateNormal];
    [barButton setImage:[UIImage imageWithoutRendering:highlightedImage] forState:UIControlStateHighlighted];
    [barButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [barButton setTitle:title forState:UIControlStateNormal];
//    barButton.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 20);
    [barButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [barButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [barButton sizeToFit];
    //为什么这里需要添加一个container, 是因为如果将UIButton包装成UIBarButtonItem, 就会导致点击区域变大
    UIView *container = [[UIView alloc] initWithFrame:barButton.bounds];
    
    [container addSubview:barButton];

    return [[UIBarButtonItem alloc] initWithCustomView:container];
    
}
@end
