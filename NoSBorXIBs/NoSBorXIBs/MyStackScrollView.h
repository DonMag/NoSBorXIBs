//
//  MyStackScrollView.h
//  NoSBorXIBs
//
//  Created by Don Mag on 6/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyStackScrollView : UIScrollView

- (NSInteger) refresh;

- (NSInteger) removeView:(nullable UIView *)view atIndex:(NSInteger)index shouldRefresh:(BOOL)b;

- (NSInteger) insertView:(nonnull UIView *)view atIndex:(NSInteger)index shouldRefresh:(BOOL)b;

- (NSInteger) addViews:(nonnull NSArray *)views shouldRefresh:(BOOL)b;

@end
