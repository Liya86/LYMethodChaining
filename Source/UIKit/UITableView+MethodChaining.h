//
//  UITableView+MethodChaining.h
//  LYMethodChaining
//
//  Created by Liya on 2018/1/10.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
@interface UITableView (MethodChaining)
@property (nonatomic, copy, readonly) UITableView *(^mc_dataSource)(id <UITableViewDataSource>);
@property (nonatomic, copy, readonly) UITableView *(^mc_delegate)(id <UITableViewDelegate>);
@property (nonatomic, copy, readonly) UITableView *(^mc_prefetchDataSource)(id <UITableViewDataSourcePrefetching>) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) UITableView *(^mc_dragDelegate)(id <UITableViewDragDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UITableView *(^mc_dropDelegate)(id <UITableViewDropDelegate>) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) UITableView *(^mc_rowHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionHeaderHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionFooterHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_estimatedRowHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_estimatedSectionHeaderHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_estimatedSectionFooterHeight)(CGFloat);
@property (nonatomic, copy, readonly) UITableView *(^mc_separatorInset)(UIEdgeInsets) UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readonly) UITableView *(^mc_separatorInsetReference)(UITableViewSeparatorInsetReference) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) UITableView *(^mc_backgroundView)(UIView *_Nullable);
@property (nonatomic, copy, readonly) UITableView *(^mc_editing)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_editingWithAnimated)(BOOL, BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_allowsSelection)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_allowsSelectionDuringEditing)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_allowsMultipleSelection)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_allowsMultipleSelectionDuringEditing)(BOOL);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionIndexMinimumDisplayRowCount)(NSInteger);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionIndexColor)(UIColor *);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionIndexBackgroundColor)(UIColor *);
@property (nonatomic, copy, readonly) UITableView *(^mc_sectionIndexTrackingBackgroundColor)(UIColor *);
@property (nonatomic, copy, readonly) UITableView *(^mc_separatorStyle)(UITableViewCellSeparatorStyle) __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UITableView *(^mc_separatorColor)(UIColor *) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UITableView *(^mc_separatorEffect)(UIVisualEffect *) UI_APPEARANCE_SELECTOR __TVOS_PROHIBITED;
@property (nonatomic, copy, readonly) UITableView *(^mc_cellLayoutMarginsFollowReadableWidth)(BOOL) NS_AVAILABLE_IOS(9_0);
@property (nonatomic, copy, readonly) UITableView *(^mc_insetsContentViewsToSafeArea)(BOOL) API_AVAILABLE(ios(11.0), tvos(11.0));
@property (nonatomic, copy, readonly) UITableView *(^mc_tableHeaderView)(UIView * _Nullable);
@property (nonatomic, copy, readonly) UITableView *(^mc_tableFooterView)(UIView * _Nullable);
@property (nonatomic, copy, readonly) UITableView *(^mc_registerClassForCellReuseIdentifier)(Class _Nullable, NSString *);
@property (nonatomic, copy, readonly) UITableView *(^mc_registerClassForHeaderFooterViewReuseIdentifier)(Class _Nullable, NSString *);
@end
NS_ASSUME_NONNULL_END
