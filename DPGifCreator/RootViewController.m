//
//  RootViewController.m
//  DPGifCreator
//
//  Created by Kostas on 2/4/15.
//  Copyright (c) 2015 Kostas Antonopoulos. All rights reserved.
//

#import "RootViewController.h"
#import "DPGifCreator.h"
#import "DPGSlide.h"

@interface RootViewController (){
    
    __weak IBOutlet UIImageView *testImageView;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self createTestGif];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Test

-(void)createTestGif{
    DPGSlide *slide1 = [[DPGSlide alloc]initWithFrame:testImageView.bounds];
    [slide1 setText:@"First"];
    [slide1 setBackgroundColor:[UIColor redColor]];
    [slide1 setTextFont:[UIFont boldSystemFontOfSize:24]];
    
    DPGSlide *slide2 = [[DPGSlide alloc]initWithFrame:testImageView.bounds];
    [slide2 setText:@"Second"];
    [slide2 setTextAlignment:NSTextAlignmentCenter];
    [slide2 setImage:[UIImage imageNamed:@"test1.png"]];
    
    DPGifCreator *creator = [[DPGifCreator alloc]init];
    
    [testImageView setImage:[creator createGifWithSlides:@[slide1,slide2] andDuration:2]];
}

@end
