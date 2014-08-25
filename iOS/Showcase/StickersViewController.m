//
//  StickersViewController.m
//  Showcase
//
//  Created by Gauri Tikekar on 8/21/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import "StickersViewController.h"

@interface StickersViewController ()

@end

@implementation StickersViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)closeView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(deviceOrientationDidChangeNotification:)
     name:UIDeviceOrientationDidChangeNotification
     object:nil];

}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.cokeAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"4" frame:CGRectMake(0,0,self.cokeAdAnchor.frame.size.width,self.cokeAdAnchor.frame.size.height)];
    self.cokeAdView.tags = @"coke,sticker";
    [self.cokeAdAnchor addSubview:self.cokeAdView];
    [self.cokeAdView requestContent];

    self.balloonAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"5" frame:CGRectMake(0,0,self.balloonAdAnchor.frame.size.width,self.balloonAdAnchor.frame.size.height)];
    self.balloonAdView.tags = @"balloon,sticker";
    [self.balloonAdAnchor addSubview:self.balloonAdView];
    [self.balloonAdView requestContent];

    self.frogAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"6" frame:CGRectMake(0,0,self.frogAdAnchor.frame.size.width,self.frogAdAnchor.frame.size.height)];
    self.frogAdView.tags = @"frog,sticker";
    [self.frogAdAnchor addSubview:self.frogAdView];
    [self.frogAdView requestContent];

    self.snowAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"7" frame:CGRectMake(0,0,self.snowAdAnchor.frame.size.width,self.snowAdAnchor.frame.size.height)];
    self.snowAdView.tags = @"snow,sticker";
    [self.snowAdAnchor addSubview:self.snowAdView];
    [self.snowAdView requestContent];

}

// for iOS 6
- (BOOL)shouldAutorotate {
    return YES;
}

- (void)deviceOrientationDidChangeNotification:(NSNotification*)note
{

}
// for iOS 6
-(NSUInteger)supportedInterfaceOrientations {

    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
