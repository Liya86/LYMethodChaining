//
//  UIButton+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIButton (MethodChaining)
@property (nonatomic, copy, readonly) UIButton *(^mc_contentEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^mc_imageEdgeInsets)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UIButton *(^mc_adjustsImageWhenHighlighted)(BOOL);
@property (nonatomic, copy, readonly) UIButton *(^mc_adjustsImageWhenDisabled)(BOOL);
@property (nonatomic, copy, readonly) UIButton *(^mc_showsTouchWhenHighlighted)(BOOL) __TVOS_PROHIBITED;;
@property (nonatomic, copy, readonly) UIButton *(^mc_tintColor)(UIColor *);
@property (nonatomic, copy, readonly) UIButton *(^mc_title)(NSString *);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleForState)(NSString *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleColor)(UIColor *);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleColorForState)(UIColor *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleShadowColor)(UIColor *);
@property (nonatomic, copy, readonly) UIButton *(^mc_titleShadowColorForState)(UIColor *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_image)(UIImage *);
@property (nonatomic, copy, readonly) UIButton *(^mc_imageForState)(UIImage *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_backgroundImage)(UIImage *);
@property (nonatomic, copy, readonly) UIButton *(^mc_backgroundImageForState)(UIImage *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_attributedTitle)(NSAttributedString *);
@property (nonatomic, copy, readonly) UIButton *(^mc_attributedTitleForState)(NSAttributedString *, UIControlState);
@property (nonatomic, copy, readonly) UIButton *(^mc_font)(UIFont *);
@end
NS_ASSUME_NONNULL_END
