//
//  NSMutableDictionary+LYAttributes.m
//  LYMethodChaining
//
//  Created by Liya on 2018/1/16.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "NSMutableDictionary+LYAttributes.h"
#import "NSMutableDictionary+LYFoundation.h"
#import <UIKit/UIKit.h>

@implementation NSMutableDictionary (LYAttributes)

- (NSMutableDictionary * (^)(UIFont *))mc_attribute_font {
    return ^NSMutableDictionary *(UIFont *font) {
        [self ly_setObject:font forKey:NSFontAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_foregroundColor {
    return ^NSMutableDictionary *(UIColor *color) {
        [self ly_setObject:color forKey:NSForegroundColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_backgroundColor {
    return ^NSMutableDictionary *(UIColor *color) {
        [self ly_setObject:color forKey:NSBackgroundColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_ligatureColor {
    return ^NSMutableDictionary *(NSNumber *ligature) {
        [self ly_setObject:ligature forKey:NSLigatureAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_kernColor {
    return ^NSMutableDictionary *(NSNumber *kern) {
        [self ly_setObject:kern forKey:NSKernAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_strikethroughStyle {
    return ^NSMutableDictionary *(NSNumber *style) {
        [self ly_setObject:style forKey:NSStrikethroughStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_underlineStyle {
    return ^NSMutableDictionary *(NSNumber *style) {
        [self ly_setObject:style forKey:NSUnderlineStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_strokeColor {
    return ^NSMutableDictionary *(UIColor *color) {
        [self ly_setObject:color forKey:NSStrokeColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSMutableParagraphStyle *))mc_attribute_paragraphStyle {
    return ^NSMutableDictionary *(NSMutableParagraphStyle *paragraph) {
        [self ly_setObject:paragraph forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_strokeWidth {
    return ^NSMutableDictionary *(NSNumber *strokeWidth) {
        [self ly_setObject:strokeWidth forKey:NSStrokeWidthAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSShadow *))mc_attribute_shadow {
    return ^NSMutableDictionary *(NSShadow *shadow) {
        [self ly_setObject:shadow forKey:NSShadowAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSString *))mc_attribute_textEffect {
    return ^NSMutableDictionary *(NSString *textEffect) {
        [self ly_setObject:textEffect forKey:NSTextEffectAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSTextAttachment *))mc_attribute_attachment {
    return ^NSMutableDictionary *(NSTextAttachment *ttachment) {
        [self ly_setObject:ttachment forKey:NSAttachmentAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(id))mc_attribute_link {
    return ^NSMutableDictionary *(id link) {
        [self ly_setObject:link forKey:NSLinkAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_baselineOffset {
    return ^NSMutableDictionary *(NSNumber *baselineOffset) {
        [self ly_setObject:baselineOffset forKey:NSBaselineOffsetAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_underlineColor {
    return ^NSMutableDictionary *(UIColor *color) {
        [self ly_setObject:color forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(UIColor *))mc_attribute_strikethroughColor {
    return ^NSMutableDictionary *(UIColor *color) {
        [self ly_setObject:color forKey:NSStrikethroughColorAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_obliqueness {
    return ^NSMutableDictionary *(NSNumber *obliqueness) {
        [self ly_setObject:obliqueness forKey:NSObliquenessAttributeName];
        return self;
    };
}

- (NSMutableDictionary * (^)(NSNumber *))mc_attribute_expansion {
    return ^NSMutableDictionary *(NSNumber *expansion) {
        [self ly_setObject:expansion forKey:NSExpansionAttributeName];
        return self;
    };
}

@end
