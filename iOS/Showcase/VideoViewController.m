//
//  VideoViewController.m
//  Showcase
//
//  Created by Gauri Tikekar on 8/22/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

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

-(void) loadVideo {
    NSString *video = @"http://www.youtube.com/embed/zQMU-lsMb3U?showinfo=0&rel=0&playsinline=1";
    NSString *embed = nil;

    NSString* part1 = @"<iframe webkit-playsinline=\"webkit-playsinline\" width=\"";
    NSString* part2 =  [NSString stringWithFormat: @"%f", self.webView.bounds.size.width];
    NSString *part3 = @"\" height=\"";
    NSString* part4 = [NSString stringWithFormat: @"%f", self.webView.bounds.size.height];
    NSString *part5 = @"\" src=\"";
    NSString *part6 = video;
    NSString *part7 = @"\" frameborder=\"0\" allowfullscreen></iframe>";
    embed = [NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@ %@", part1, part2, part3, part4, part5, part6, part7];

    self.webView.allowsInlineMediaPlayback=YES;
    [self.webView setMediaPlaybackRequiresUserAction:NO];
    [self.webView loadHTMLString:embed baseURL:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadVideo];

    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(deviceOrientationDidChangeNotification:)
     name:UIDeviceOrientationDidChangeNotification
     object:nil];

    self.molAdView = [[MOLAnchorView alloc] initWithContentUnitId:@"9" frame:CGRectMake(0,0,self.adHolderView.frame.size.width,self.adHolderView.frame.size.height)];
    self.molAdView.tags = @"paint";
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
