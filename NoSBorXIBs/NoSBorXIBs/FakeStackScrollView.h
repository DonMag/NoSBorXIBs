//
//  FakeStackScrollView.h
//  OCVeryTemp
//
//  Created by Don Mag on 6/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FakeStackScrollView : UIScrollView

- (NSInteger) refresh;

- (NSInteger) removeViewAtIndex:(NSInteger)index shouldRefresh:(BOOL)b;

- (NSInteger) insertView:(UIView *)view atIndex:(NSInteger)index shouldRefresh:(BOOL)b;

- (NSInteger) addViews:(NSArray *)views shouldRefresh:(BOOL)b;

@end
