//
//  PaintAdViewController.h
//  Showcase
//
//  Created by Gauri Tikekar on 8/21/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MOLAnchorView.h"

@interface PaintAdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *adHolderView;

@property MOLAnchorView *molAdView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
