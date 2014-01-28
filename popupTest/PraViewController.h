//
//  PraViewController.h
//  popupTest
//
//  Created by eff-mac-002 on 1/28/14.
//  Copyright (c) 2014 pravistaGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PraViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *smileyImages;
@property (weak, nonatomic) IBOutlet UIView *popupView;
@property (weak, nonatomic) IBOutlet UIImageView *popupImage;
@property (strong,nonatomic) UIImage *selectedImage;

@end
