//
//  NSMutableAttributedString+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSMutableAttributedString (MethodChaining)
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_replaceCharacters)(NSRange, NSString *);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_setAttributes)(NSDictionary<NSAttributedStringKey, id> *, NSRange);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_setAttribute)(NSAttributedStringKey, id, NSRange);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_addAttributes)(NSDictionary<NSAttributedStringKey, id> *, NSRange);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_removeAttribute)(NSAttributedStringKey, NSRange);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_replaceCharactersWithAttributedString)(NSRange, NSAttributedString *);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_insertAttributedString)(NSAttributedString *, NSUInteger);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_appendAttributedString)(NSAttributedString *);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_deleteCharacters)(NSRange);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_setAttributedString)(NSAttributedString *);
@property (nonatomic, copy, readonly) NSMutableAttributedString *(^mc_fixAttributesInRange)(NSRange);
@end
NS_ASSUME_NONNULL_END
