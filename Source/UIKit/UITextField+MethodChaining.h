//
//  UITextField+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UITextField (MethodChaining)
@property (nonatomic, copy, readonly) UITextField *(^mc_text)(NSString *);
@property (nonatomic, copy, readonly) UITextField *(^mc_placeholder)(NSString *);
@property (nonatomic, copy, readonly) UITextField *(^mc_attributedText)(NSAttributedString *);
@property (nonatomic, copy, readonly) UITextField *(^mc_attributedPlaceholder)(NSAttributedString *);
@property (nonatomic, copy, readonly) UITextField *(^mc_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UITextField *(^mc_font)(UIFont *);
@property (nonatomic, copy, readonly) UITextField *(^mc_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UITextField *(^mc_borderStyle)(UITextBorderStyle);
@property (nonatomic, copy, readonly) UITextField *(^mc_defaultTextAttributes)(NSDictionary<NSString *, id> *);
@property (nonatomic, copy, readonly) UITextField *(^mc_clearsOnBeginEditing)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^mc_adjustsFontSizeToFitWidth)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^mc_minimumFontSize)(CGFloat);
@property (nonatomic, copy, readonly) UITextField *(^mc_delegate)(id<UITextFieldDelegate>);
@property (nonatomic, copy, readonly) UITextField *(^mc_background)(UIImage *);
@property (nonatomic, copy, readonly) UITextField *(^mc_disabledBackground)(UIImage *);
@property (nonatomic, copy, readonly) UITextField *(^mc_allowsEditingTextAttributes)(BOOL);
@property (nonatomic, copy, readonly) UITextField *(^mc_typingAttributes)(NSDictionary<NSString *, id> *);
@property (nonatomic, copy, readonly) UITextField *(^mc_clearButtonMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^mc_leftViewMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^mc_leftView)(UIView *);
@property (nonatomic, copy, readonly) UITextField *(^mc_rightViewMode)(UITextFieldViewMode);
@property (nonatomic, copy, readonly) UITextField *(^mc_rightView)(UIView *);
@end
NS_ASSUME_NONNULL_END
