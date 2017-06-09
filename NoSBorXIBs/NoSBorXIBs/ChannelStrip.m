//
//  ChannelStrip.m
//  NoSBorXIBs
//
//  Created by Don Mag on 6/9/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "ChannelStrip.h"

@implementation ChannelStrip

- (id)initWithFrame:(CGRect)frame andColor:(UIColor *)c andID:(NSInteger)i
{
	self = [super initWithFrame:frame];
	if (self) {

		CGFloat w = 40, h = 40;
		
		CGRect f = CGRectInset(self.bounds, (self.bounds.size.width - w) / 2.0, (self.bounds.size.height - h) / 2.0);
		
		UILabel *lbl = [[UILabel alloc] initWithFrame:f];
		lbl.text = [@(i) stringValue];
		lbl.textAlignment = NSTextAlignmentCenter;
		lbl.backgroundColor = [UIColor whiteColor];
		
		[self addSubview:lbl];
		
		self.layer.borderWidth = 1.0;
		
		self.backgroundColor = c;
		
	}
	return self;
}


@end
