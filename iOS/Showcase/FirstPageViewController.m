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
#import "FirstPageCollectionViewCell.h"
#import "AllAdsViewController.h"
#import "VideoViewController.h"

#define ANIMATED_ANCHOR_TYPE       @"animatedAnchor"
#define STICKER_ANIMATIONS_TYPE    @"stickerAnimations"
#define GAME_INTEGRATION_TYPE      @"gameIntegration"
#define PAINT_SHARE_TYPE           @"paintShare"
#define ALL_ADS_TYPE               @"allAds"
#define VIDEO_OVERLAY_AD           @"videoOverlayAd"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.cellImagesForType = [[NSMutableDictionary alloc] init];
    self.cellLabelForType = [[NSMutableDictionary alloc] init];

    self.cellTypes = [[NSMutableArray alloc] init];

    [self createCellData];
    [self.collectionView reloadData];
}

-(void) createCellData {

    UIImage *img = [UIImage imageNamed:@"candy_crush2.jpg"];
    [self.cellTypes addObject:ANIMATED_ANCHOR_TYPE];
    [self.cellImagesForType setObject:img forKey:ANIMATED_ANCHOR_TYPE];
    [self.cellLabelForType setObject:@"Animated Anchor" forKey:ANIMATED_ANCHOR_TYPE];

    img = [UIImage imageNamed:@"chat.png"];
    [self.cellTypes addObject:STICKER_ANIMATIONS_TYPE];
    [self.cellImagesForType setObject:img forKey:STICKER_ANIMATIONS_TYPE];
    [self.cellLabelForType setObject:@"Sticker Animations" forKey:STICKER_ANIMATIONS_TYPE];

    img = [UIImage imageNamed:@"candy_board.png"];
    [self.cellTypes addObject:GAME_INTEGRATION_TYPE];
    [self.cellImagesForType setObject:img forKey:GAME_INTEGRATION_TYPE];
    [self.cellLabelForType setObject:@"Integration With Game" forKey:GAME_INTEGRATION_TYPE];

    [self.cellTypes addObject:PAINT_SHARE_TYPE];
    [self.cellImagesForType setObject:img forKey:PAINT_SHARE_TYPE];
    [self.cellLabelForType setObject:@"Paint and Share" forKey:PAINT_SHARE_TYPE];

    [self.cellTypes addObject:ALL_ADS_TYPE];
    [self.cellImagesForType setObject:img forKey:ALL_ADS_TYPE];
    [self.cellLabelForType setObject:@"Integration With Game" forKey:ALL_ADS_TYPE];

    img = [UIImage imageNamed:@"play_video.jpeg"];
    [self.cellTypes addObject:VIDEO_OVERLAY_AD];
    [self.cellImagesForType setObject:img forKey:VIDEO_OVERLAY_AD];
    [self.cellLabelForType setObject:@"Video Overlay" forKey:VIDEO_OVERLAY_AD];


}

-(void) openAnimatedAnchor {
    AnimatedAnchorViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AnimatedAnchorViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

-(void) openStickerAnimations {
    StickersViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"StickersViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

-(void) openGameIntegration {
    GameViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"GameViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

-(void) openAllAds {
    AllAdsViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AllAdsViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (IBAction)animatedAnchorClick:(id)sender {
    AnimatedAnchorViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AnimatedAnchorViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (void) openPaintAndShare {
    PaintAdViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PaintAdViewController"];
    [self presentViewController:molAdViewController animated:true completion:nil];
}

- (void) openVideoOverlayAd {
    VideoViewController *molAdViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"VideoViewController"];
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

    NSString *deviceType = [UIDevice currentDevice].model;

    if([deviceType hasPrefix:@"iPad"]) {
        return UIInterfaceOrientationMaskAll;
    }


    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

#pragma mark - UICollectionView Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return self.cellTypes.count;
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FirstPageCollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"FirstPageCell" forIndexPath:indexPath];
    NSString *cellType = [self.cellTypes objectAtIndex:indexPath.item];
    if(cellType != nil) {
        UIImage *img = [self.cellImagesForType objectForKey:cellType];
        if(img != nil) {
            [cell.imageView setImage:img];
        }
        NSString *lblText = [self.cellLabelForType objectForKey:cellType];
        if(lblText != nil) {
            [cell.viewLabel setText:lblText];
        }
    }
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellType = [self.cellTypes objectAtIndex:indexPath.item];
    if([cellType isEqualToString:ANIMATED_ANCHOR_TYPE]) {
        [self openAnimatedAnchor];
    }
    else if([cellType isEqualToString:STICKER_ANIMATIONS_TYPE]) {
        [self openStickerAnimations];
    }
    else if([cellType isEqualToString:PAINT_SHARE_TYPE]) {
        [self openPaintAndShare];
    }
    else if([cellType isEqualToString:GAME_INTEGRATION_TYPE]) {
        [self openGameIntegration];
    }
    else if([cellType isEqualToString:ALL_ADS_TYPE]) {
        [self openAllAds];
    }
    else if([cellType isEqualToString:VIDEO_OVERLAY_AD]) {
        [self openVideoOverlayAd];
    }
}
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}



@end
