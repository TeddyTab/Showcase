//
//  RootViewController.h
//  Showcase
//
//  Created by Gauri Tikekar on 7/3/14.
//
//

#import <UIKit/UIKit.h>

@interface FirstPageViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic) NSMutableDictionary *cellImagesForType;
@property (nonatomic) NSMutableDictionary *cellLabelForType;
@property (nonatomic) NSMutableArray *cellTypes;

@end
