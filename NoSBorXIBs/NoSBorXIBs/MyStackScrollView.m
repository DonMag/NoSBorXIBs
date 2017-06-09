//
//  MyStackScrollView.m
//  NoSBorXIBs
//
//  Created by Don Mag on 6/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "MyStackScrollView.h"

@interface MyStackScrollView ()

@property (strong, nonatomic) NSMutableArray *theViews;

@end

@implementation MyStackScrollView

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		self.theViews = [NSMutableArray array];
	}
	return self;
}

- (void) arrangeViews {
	CGRect r;
	CGFloat xOffset = 0.0;
	CGFloat maxHeight = 0.0;
	
	for (UIView *v in _theViews) {
		r = v.frame;
		r.origin.x = xOffset;
		v.frame = r;
		xOffset += r.size.width;
		[self addSubview:v];
		maxHeight = MAX(maxHeight, r.size.height);
	}
	
	self.contentSize = CGSizeMake(xOffset, maxHeight);
}

- (NSInteger) refresh {
	[self arrangeViews];
	return _theViews.count;
}

- (NSInteger) removeView:(nullable UIView *)view atIndex:(NSInteger)index shouldRefresh:(BOOL)b {
	
	if (view) {
		
		[_theViews removeObject:view];
		
	} else {
		
		if (index < _theViews.count) {
			UIView *v = [_theViews objectAtIndex:index];
			[v removeFromSuperview];
			[_theViews removeObjectAtIndex:index];
		}
		
	}
	
	if (b) { [self arrangeViews]; }
	
	return _theViews.count;
}

- (NSInteger) insertView:(nonnull UIView *)view atIndex:(NSInteger)index shouldRefresh:(BOOL)b {
	
	NSInteger i = MIN(index, _theViews.count);
	
	[_theViews insertObject:view atIndex:i];
	
	if (b) { [self arrangeViews]; }
	
	return _theViews.count;
}

- (NSInteger) addViews:(nonnull NSArray *)views shouldRefresh:(BOOL)b {
	
	[_theViews addObjectsFromArray:views];
	
	if (b) { [self arrangeViews]; }
	
	return _theViews.count;
}

@end
