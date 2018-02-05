//
//  NSMutableAttributedString+MethodChaining.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "LYMethodChainingMacros.h"
#import "NSMutableAttributedString+MethodChaining.h"
#import "NSString+LYFoundation.h"
#import <UIKit/UIKit.h>

@implementation NSMutableAttributedString (MethodChaining)
- (NSMutableAttributedString * (^)(NSRange, NSString *))mc_replaceCharacters {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSRange range, NSString *str) {
        MC_Strongify(self)
            range = [self.string ly_rangeWithin:range];
        if (str) {
            [self replaceCharactersInRange:range withString:str];
        } else {
            [self deleteCharactersInRange:range];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSDictionary<NSAttributedStringKey, id> *, NSRange))mc_setAttributes {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSDictionary<NSAttributedStringKey, id> *attrs, NSRange range) {
        MC_Strongify(self)
            [self setAttributes:attrs
                          range:[self.string ly_rangeWithin:range]];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSAttributedStringKey, id, NSRange))mc_setAttribute {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSAttributedStringKey name, id value, NSRange range) {
        MC_Strongify(self)
            range = [self.string ly_rangeWithin:range];
        if (name) {
            [self removeAttribute:name range:range];
            if (value) {
                [self addAttribute:name value:value range:range];
            }
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSDictionary<NSAttributedStringKey, id> *, NSRange))mc_addAttributes {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSDictionary<NSAttributedStringKey, id> *attrs, NSRange range) {
        MC_Strongify(self)
            range = [self.string ly_rangeWithin:range];
        if (attrs) {
            [self addAttributes:attrs range:range];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSAttributedStringKey, NSRange))mc_removeAttribute {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSAttributedStringKey name, NSRange range) {
        MC_Strongify(self) if (name) {
            [self removeAttribute:name range:[self.string ly_rangeWithin:range]];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSRange, NSAttributedString *))mc_replaceCharactersWithAttributedString {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSRange range, NSAttributedString *attrString) {
        MC_Strongify(self)
            range = [self.string ly_rangeWithin:range];
        if (attrString) {
            [self replaceCharactersInRange:range withAttributedString:attrString];
        } else {
            [self deleteCharactersInRange:range];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSAttributedString *, NSUInteger))mc_insertAttributedString {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSAttributedString *attrString, NSUInteger loc) {
        MC_Strongify(self) if (attrString) {
            [self insertAttributedString:attrString atIndex:[self.string ly_loctionWithin:loc]];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSAttributedString *))mc_appendAttributedString {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSAttributedString *attrString) {
        MC_Strongify(self) if (attrString) {
            [self appendAttributedString:attrString];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSRange))mc_deleteCharacters {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSRange range) {
        MC_Strongify(self)
            [self deleteCharactersInRange:[self.string ly_rangeWithin:range]];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSAttributedString *))mc_setAttributedString {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSAttributedString *attrString) {
        MC_Strongify(self) if (attrString) {
            [self setAttributedString:attrString];
        }
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSRange))mc_fixAttributesInRange {
    MC_Weakify(self) return ^NSMutableAttributedString *(NSRange range) {
        MC_Strongify(self)
            [self fixAttributesInRange:[self.string ly_rangeWithin:range]];
        return self;
    };
}

@end
