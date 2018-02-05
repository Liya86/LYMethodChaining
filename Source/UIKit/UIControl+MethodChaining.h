//
//  UIControl+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UIControl (MethodChaining)
@property (nonatomic, copy, readonly) UIControl *(^mc_enabled)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^mc_selected)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^mc_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UIControl *(^mc_contentVerticalAlignment)(UIControlContentVerticalAlignment);
@property (nonatomic, copy, readonly) UIControl *(^mc_contentHorizontalAlignment)(UIControlContentHorizontalAlignment);
@property (nonatomic, copy, readonly) UIControl *(^mc_addTarget)(id, SEL, UIControlEvents);
@property (nonatomic, copy, readonly) UIControl *(^mc_removeTarget)(id, SEL, UIControlEvents);
@property (nonatomic, copy, readonly) UIControl *(^mc_sendActionsForControlEvents)(UIControlEvents);
@end
NS_ASSUME_NONNULL_END
