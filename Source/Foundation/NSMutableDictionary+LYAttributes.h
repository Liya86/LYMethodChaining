//
//  NSMutableDictionary+LYAttributes.h
//  LYMethodChaining
//  NSAttribute
//  Created by Liya on 2018/1/16.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIFont, UIColor, NSShadow, NSTextAttachment, NSMutableParagraphStyle;
NS_ASSUME_NONNULL_BEGIN
@interface NSMutableDictionary (LYAttributes)
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_font)(UIFont *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_foregroundColor)(UIColor *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_backgroundColor)(UIColor *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_ligatureColor)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_kernColor)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_strikethroughStyle)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_underlineStyle)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_strokeColor)(UIColor *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_paragraphStyle)(NSMutableParagraphStyle *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_strokeWidth)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_shadow)(NSShadow *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_textEffect)(NSString *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_attachment)(NSTextAttachment *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_link)(id);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_baselineOffset)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_underlineColor)(UIColor *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_strikethroughColor)(UIColor *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_obliqueness)(NSNumber *);
@property (nonatomic, copy, readonly) NSMutableDictionary *(^mc_attribute_expansion)(NSNumber *);
@end
NS_ASSUME_NONNULL_END
