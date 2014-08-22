//
//  FirstPageCollectionViewCell.m
//  Showcase
//
//  Created by Gauri Tikekar on 8/22/14.
//  Copyright (c) 2014 TeddyTab. All rights reserved.
//

#import "FirstPageCollectionViewCell.h"

@implementation FirstPageCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// To add dropdown shadow.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.borderWidth = 1.0f;
    //self.layer.cornerRadius = 8.0f;
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(2, 2);
    self.layer.shadowRadius = 2;
    self.layer.shadowOpacity = 0.5;

    //Not sure if required. But websites say that dding the following line can improve performance as long as your view is visibly rectangular: Need to take a look
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
}


@end
