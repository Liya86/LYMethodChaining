//
//  NSArray+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSArray (MethodChaining)
@property (nonatomic, copy, readonly) NSArray *(^mc_addingObject)(id);
@property (nonatomic, copy, readonly) NSArray *(^mc_addingObjects)(NSArray *);
@property (nonatomic, copy, readonly) id (^mc_firstObjectCommonWithArray)(NSArray *);
@property (nonatomic, copy, readonly) NSArray *(^mc_sortedArrayUsingComparator)(NSComparator NS_NOESCAPE);
@property (nonatomic, copy, readonly) NSArray *(^mc_sortedArrayConcurrent)(NSComparator NS_NOESCAPE);
@property (nonatomic, copy, readonly) NSArray *(^mc_sortedArrayUsingSelector)(SEL);
@property (nonatomic, copy, readonly) NSArray *(^mc_sortedArrayByKeyPath)(NSString*, BOOL);
@property (nonatomic, copy, readonly) NSArray *(^mc_subarray)(NSRange);
@property (nonatomic, copy, readonly) NSArray *(^mc_subarrayFromIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSArray *(^mc_subarrayToIndex)(NSUInteger);
@property (nonatomic, copy, readonly) NSArray *(^mc_makeObjectsPerformSelector)(SEL) NS_SWIFT_UNAVAILABLE("Use mc_enumerateObjectsUsingBlock or a for loop instead");
@property (nonatomic, copy, readonly) NSArray *(^mc_makeObjectsPerformSelectorWithObject)(SEL, __nullable id) NS_SWIFT_UNAVAILABLE("Use mc_enumerateObjectsUsingBlock or a for loop instead");
@property (nonatomic, copy, readonly) NSArray *(^mc_objectsAtIndexes)(NSIndexSet *);
@property (nonatomic, copy, readonly) NSArray *(^mc_enumerateObjectsUsingBlock)(void (NS_NOESCAPE ^)(id, NSUInteger, BOOL *));
@property (nonatomic, copy, readonly) NSArray *(^mc_enumerateObjectsUsingBlockConcurrent)(void (NS_NOESCAPE ^)(id, NSUInteger, BOOL *));
@property (nonatomic, copy, readonly) id (^mc_objectAtIndexedSubscript)(NSUInteger);
@end
NS_ASSUME_NONNULL_END
