//
//  MOLAdViewController.m
//  TeddyTab
//
//  Created by Gauri Tikekar on 7/4/14.
//
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(deviceOrientationDidChangeNotification:)
     name:UIDeviceOrientationDidChangeNotification
     object:nil];

    // self.molAdView = [[MOLAnchorView alloc] initWithFrame:CGRectMake(0,0,self.adHolderView.frame.size.width,self.adHolderView.frame.size.height)];
    self.molAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"1234" frame:CGRectMake(0,0,self.adHolderView.frame.size.width,self.adHolderView.frame.size.height)];
    [self.adHolderView addSubview:self.molAdView];

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

    return UIInterfaceOrientationMaskAll; //UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
