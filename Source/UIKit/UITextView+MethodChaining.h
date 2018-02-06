//
//  UITextView+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UITextView (MethodChaining)
@property (nonatomic, copy, readonly) UITextView *(^mc_delegate)(id<UITextViewDelegate>);
@property (nonatomic, copy, readonly) UITextView *(^mc_text)(NSString *);
@property (nonatomic, copy, readonly) UITextView *(^mc_font)(UIFont *);
@property (nonatomic, copy, readonly) UITextView *(^mc_textColor)(UIColor *);
@property (nonatomic, copy, readonly) UITextView *(^mc_textAlignment)(NSTextAlignment);
@property (nonatomic, copy, readonly) UITextView *(^mc_selectedRange)(NSRange);
@property (nonatomic, copy, readonly) UITextView *(^mc_editable)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^mc_selectable)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^mc_dataDetectorTypes)(UIDataDetectorTypes);
@property (nonatomic, copy, readonly) UITextView *(^mc_allowsEditingTextAttributes)(BOOL);
@property (nonatomic, copy, readonly) UITextView *(^mc_attributedText)(NSAttributedString *);
@property (nonatomic, copy, readonly) UITextView *(^mc_typingAttributes)(NSDictionary<NSString *, id> *);
@property (nonatomic, copy, readonly) UITextView *(^mc_scrollRangeToVisible)(NSRange);
@property (nonatomic, copy, readonly) UITextView *(^mc_textContainerInset)(UIEdgeInsets);
@property (nonatomic, copy, readonly) UITextView *(^mc_linkTextAttributes)(NSDictionary<NSString *, id> *);
@end

NS_ASSUME_NONNULL_END
