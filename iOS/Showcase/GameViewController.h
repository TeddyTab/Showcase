//
//  MOLAdViewController.h
//  TeddyTab
//
//  Created by Gauri Tikekar on 7/4/14.
//
//

#import <UIKit/UIKit.h>
#import "MOLAnchorView.h"

@interface GameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *adHolderView;

@property MOLAnchorView *molAdView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
