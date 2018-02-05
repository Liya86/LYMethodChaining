//
//  NSObject+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef __kindof NSObject* _Nonnull (^mc_chainingBlock)(NSString * _Nonnull keypath, _Nullable id value);

@interface NSObject (MethodChaining)
@property (nonatomic, copy, readonly) mc_chainingBlock mc_chaining;
@end
NS_ASSUME_NONNULL_END
