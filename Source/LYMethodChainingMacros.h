//
//  LYMethodChainingMacros.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/11.
//  Copyright © 2018年 Liya. All rights reserved.
//

#ifndef LYMethodChainingMacros_h
#define LYMethodChainingMacros_h

#define _SRT_(a, b) a##b
#define SRT(a, b) _SRT_(a, b)

#define MC_is_Class(__keyType__) (NSClassFromString(__keyType__) != nil)
#define MC_Class(__keyType__) metamacro_if_eq(1, MC_is_Class(__keyType__))(__keyType__ *)(__keyType__)

#if DEBUG
#define MC_Weakify(x)  \
    @autoreleasepool { \
    }                  \
    __weak __typeof__(x) __weak_##x##__ = x;
#define MC_Strongify(x) \
    @autoreleasepool {  \
    }                   \
    __typeof__(x) x = __weak_##x##__;
#else
#define MC_Weakify(x) \
    @try {            \
    } @finally {      \
    }                 \
    __weak __typeof__(x) __weak_##x##__ = x;
#define MC_Strongify(x) \
    @try {              \
    } @finally {        \
    }                   \
    __typeof__(x) x = __weak_##x##__;
#endif

/*
 * MC_Chaining_Declare(NSObject2, NSNumber *, num, strong)
 * @property (nonatomic, strong) NSNumber *num;
 * @property (nonatomic, copy, readonly) NSObject2* (^mc_chaining_num)(NSNumber *num);
 */
#define MC_Chaining_Declare(__Class__, __keyType__, __key__, __mm__, ...)                         \
    @property (nonatomic, copy, readonly) __Class__ *(SRT (^mc_chaining_, __key__))(__keyType__); \
    @property (nonatomic, __mm__, ##__VA_ARGS__) __keyType__ __key__;

/*
 * MC_Chaining_Implementation(NSObject2, NSNumber *, num)
 * - (NSObject2* (^)(NSNumber *num))mc_chaining_xxx {
 *    return ^id (NSNumber *num) {
 *       _num = num;
 *       return self;
 *    }
 *}
 */
#define MC_Chaining_Implementation(__Class__, __keyType__, __key__) \
    -(__Class__ * (^)(__keyType__)) SRT(mc_chaining_, __key__) {    \
        MC_Weakify(self);                                           \
        return ^id(__keyType__ __key__) {                           \
            MC_Strongify(self);                                     \
            SRT(_, __key__) = __key__;                              \
            return self;                                            \
        };                                                          \
    }


#define MC_Chaining_Interface_Strong(__Class__, __keyType__, __key__) MC_Chaining_Declare(__Class__, __keyType__, __key__, strong)
#define MC_Chaining_Interface_Copy(__Class__, __keyType__, __key__) MC_Chaining_Declare(__Class__, __keyType__, __key__, copy)
#define MC_Chaining_Interface_Weak(__Class__, __keyType__, __key__) MC_Chaining_Declare(__Class__, __keyType__, __key__, weak)
#define MC_Chaining_Interface_Assign(__Class__, __keyType__, __key__) MC_Chaining_Declare(__Class__, __keyType__, __key__, assign)

#endif
/* LYMethodChainingMacros_h */
