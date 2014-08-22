//
//  RootViewController.m
//  Showcase
//
//  Created by Gauri Tikekar on 7/3/14.
//
//

#import "FirstPageViewController.h"
#import "GameViewController.h"
#import "AnimatedAnchorViewController.h"
#import "PaintAdViewController.h"
#import "StickersViewController.h"


@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // [self setButtonUI];
}

- (IBAction)animatedAnchorClick:(id)sender {
    AnimatedAnchorViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AnimatedAnchorViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (IBAction)stickerAnimationsClick:(id)sender {
    StickersViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"StickersViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];

}

- (IBAction)gameIntegrationClick:(id)sender {
    GameViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (IBAction)paintShareClick:(id)sender {
    PaintAdViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PaintAdViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (IBAction)inStreamClick:(id)sender {
}

-(void) setButtonUI {

    self.gameIntegrationAdButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.gameIntegrationAdButton.layer.borderWidth = 1.0f;

    self.gameIntegrationAdButton.layer.masksToBounds = NO;
    self.gameIntegrationAdButton.layer.shadowOffset = CGSizeMake(2, 2);
    self.gameIntegrationAdButton.layer.shadowRadius = 2;
    self.gameIntegrationAdButton.layer.shadowOpacity = 0.5;

    //Not sure if required. But websites say that adding the following line can improve performance as long as your view is visibly rectangular: Need to take a look
    self.gameIntegrationAdButton.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.gameIntegrationAdButton.bounds].CGPath;
    [self.gameIntegrationAdButton.titleLabel setBackgroundColor:[UIColor whiteColor]];
    
}

- (IBAction)onMOLAdViewClick:(id)sender {
    GameViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// for iOS 6
- (BOOL)shouldAutorotate {
    return YES;
}

// for iOS 6
-(NSUInteger)supportedInterfaceOrientations {

    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}


@end
