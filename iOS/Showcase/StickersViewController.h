//
//  StickersViewController.h
//  Showcase
//
//  Created by Gauri Tikekar on 8/21/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MOLAnchorView.h"

@interface StickersViewController : UIViewController

@property MOLAnchorView *molAdView;
@property (weak, nonatomic) IBOutlet UIView *cokeAdAnchor;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
