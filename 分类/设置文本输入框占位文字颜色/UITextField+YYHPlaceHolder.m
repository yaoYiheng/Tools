

#import "UITextField+YYHPlaceHolder.h"

#import <objc/message.h>

@implementation UITextField (YYHPlaceHolder)

+ (void)load{


    Method placeHolder = class_getInstanceMethod(self, @selector(setPlaceholder:));

    Method yyh_placeHolder = class_getInstanceMethod(self, @selector(set_YyhPlaceHolder:));


    method_exchangeImplementations(placeHolder, yyh_placeHolder);

}

- (UIColor *)yyh_placeHolderColor{
    return objc_getAssociatedObject(self, "yyh_placeHolderColor");
}
//设置占位文字的颜色 _placeholderLabel
- (void)setYyh_placeHolderColor:(UIColor *)yyh_placeHolderColor{


    objc_setAssociatedObject(self, "yyh_placeHolderColor", yyh_placeHolderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

    UILabel *placeHolderLabel = [self valueForKey:@"placeholderLabel"];

    placeHolderLabel.textColor = yyh_placeHolderColor;
}

- (void)set_YyhPlaceHolder: (NSString *)placeHolder{

    [self set_YyhPlaceHolder:placeHolder];

    self.yyh_placeHolderColor = self.yyh_placeHolderColor;


}



@end
