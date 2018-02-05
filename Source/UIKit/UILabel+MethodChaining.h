//
//  UILabel+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UILabel (MethodChaining)
@property (nonatomic, copy, readonly) UILabel *(^mc_text)(NSString *);
@property (nonatomic, copy, readonly) UILabel *(^mc_font)(UIFont *);
@property (nonatomic, copy, readonly) UILabel *(^mc_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^mc_shadowColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^mc_shadowOffset)(CGSize);
@property (nonatomic, copy, readonly) UILabel *(^mc_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UILabel *(^mc_textAlignmentLeft)(void);
@property (nonatomic, copy, readonly) UILabel *(^mc_textAlignmentRight)(void);
@property (nonatomic, copy, readonly) UILabel *(^mc_textAlignmentCenter)(void);
@property (nonatomic, copy, readonly) UILabel *(^mc_lineBreakMode)(NSLineBreakMode);
@property (nonatomic, copy, readonly) UILabel *(^mc_attributedText)(NSAttributedString *);
@property (nonatomic, copy, readonly) UILabel *(^mc_highlightedTextColor)(UIColor *);
@property (nonatomic, copy, readonly) UILabel *(^mc_highlighted)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^mc_userInteractionEnabled)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^mc_enabled)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^mc_numberOfLines)(NSInteger);
@property (nonatomic, copy, readonly) UILabel *(^mc_adjustsFontSizeToFitWidth)(BOOL);
@property (nonatomic, copy, readonly) UILabel *(^mc_baselineAdjustment)(UIBaselineAdjustment);
@property (nonatomic, copy, readonly) UILabel *(^mc_minimumScaleFactor)(CGFloat);
@property (nonatomic, copy, readonly) UILabel *(^mc_allowsDefaultTighteningForTruncation)(BOOL) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UILabel *(^mc_preferredMaxLayoutWidth)(CGFloat);
@end
NS_ASSUME_NONNULL_END
