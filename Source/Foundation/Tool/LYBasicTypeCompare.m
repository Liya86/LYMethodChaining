//
//  LYBasicTypeCompare.m
//  LYMethodChaining
//
//  Created by Liya on 2018/2/2.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYBasicTypeCompare.h"

inline BOOL ly_floatEquate(float source, float target) {
    return ABS(source - target) <= 0.00001;
}

inline BOOL ly_floatLarger(float source, float target) {
    return source - target > 0.00001;
}

inline BOOL ly_floatLess(float source, float target) {
    return source - target < -0.00001;
}
