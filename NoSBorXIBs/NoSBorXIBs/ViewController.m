//
//  ViewController.m
//  NoSBorXIBs
//
//  Created by Don Mag on 6/8/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "ViewController.h"

#import "MyStackScrollView.h"
#import "ChannelStrip.h"

@interface ViewController ()

@property (strong, nonatomic) MyStackScrollView *theStackScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor orangeColor];
	
	UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
	[b setTranslatesAutoresizingMaskIntoConstraints:NO];
	
	[b setTitle:@"Remove #2 and #5" forState:UIControlStateNormal];
	[b setBackgroundColor:[UIColor blueColor]];
	[b setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	
	[self.view addSubview:b];
	
	[b.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = true;
	[b.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20.0].active = true;
	
	CGRect r = self.view.bounds;
	
	r.size.width *= 0.9;
	r.origin.x = (self.view.bounds.size.width - r.size.width) / 2;

	r.size.height /= 2;
	r.origin.y = (self.view.bounds.size.height - r.size.height) / 2;
	
	_theStackScrollView = [[MyStackScrollView alloc] initWithFrame:r];
	_theStackScrollView.backgroundColor = [UIColor yellowColor];
	
	[self.view addSubview:_theStackScrollView];
	
	r.origin.x = r.origin.y = 0.0;
	r.size.width = 80.0;
	
	for (NSInteger i = 0; i < 16; i++) {
		
		ChannelStrip *cs = [[ChannelStrip alloc] initWithFrame:r andColor:[UIColor grayColor] andID:i];
	
		[_theStackScrollView addViews:@[cs] shouldRefresh:NO];
		
	}

	[_theStackScrollView refresh];
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
