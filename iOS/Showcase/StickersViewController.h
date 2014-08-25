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

@property (nonatomic) MOLAnchorView *cokeAdView;
@property (nonatomic) MOLAnchorView *balloonAdView;
@property (nonatomic) MOLAnchorView *snowAdView;
@property (nonatomic) MOLAnchorView *frogAdView;

@property (weak, nonatomic) IBOutlet UICollectionView *stickersCollection;
@property (weak, nonatomic) IBOutlet UIView *balloonAdAnchor;
@property (weak, nonatomic) IBOutlet UIView *snowAdAnchor;

@property (weak, nonatomic) IBOutlet UIView *cokeAdAnchor;
@property (weak, nonatomic) IBOutlet UIView *frogAdAnchor;
@end
