//
//  NSAttributedString+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIFont, UIColor;
NS_ASSUME_NONNULL_BEGIN
@interface NSAttributedString (MethodChaining)

@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringFromRange)(NSRange);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringFromIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringToIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringFromRangeAvoidBreakingUpEmoji)(NSRange);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringFromIndexAvoidBreakingUpEmoji)(NSUInteger);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_attributedSubstringToIndexAvoidBreakingUpEmoji)(NSUInteger);
#pragma mark - 属性(得到新的NSAttributedString)
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_setAttribute)(NSAttributedStringKey, id, NSRange);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_fontForRange)(UIFont *, NSRange);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_font)(UIFont *);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_textColorForRange)(UIColor *, NSRange);
@property (nonatomic, copy, readonly) NSAttributedString *(^mc_textColor)(UIColor *);
@end
NS_ASSUME_NONNULL_END
