//
//  AnimatedAnchorViewController.m
//  Showcase
//
//  Created by Gauri Tikekar on 8/21/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import "AnimatedAnchorViewController.h"

@interface AnimatedAnchorViewController ()

@end

@implementation AnimatedAnchorViewController

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

    self.molAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"2" frame:CGRectMake(0,0,self.adHolderView.frame.size.width,self.adHolderView.frame.size.height)];
    self.molAdView.tags = @"candies";
    [self.adHolderView addSubview:self.molAdView];
    [self.molAdView requestContent];
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

    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
