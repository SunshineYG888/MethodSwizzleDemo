//
//  ViewController.m
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import "ViewController.h"
#import "YGImage.h"
#import "YGSkin.h"
#import "UIImage+Swizzle.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *starImageView;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self changeSkinSBtnClick:[self.view viewWithTag:1]];
}

- (IBAction)changeSkinSBtnClick:(UIButton *)sender {
    [YGImage setMode:YGImageModeSkin];
    
    // select a style according to the sender
    switch (sender.tag) {
        case 1:
            [YGSkin setStyel:YGSkinStyleRed];
            break;
        case 2:
            [YGSkin setStyel:YGSkinStyleGreen];
            break;
        case 3:
            [YGSkin setStyel:YGSkinStyleBlue];
            break;
        default:
            break;
    }
    
    [self setupImage];
}

- (void)setupImage{
    self.starImageView.image = [UIImage imageNamed:@"star"];
    self.circleImageView.image = [UIImage imageNamed:@"circle"];
    self.rectImageView.image = [UIImage imageNamed:@"rect"];
}

//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    [self setImagesWithRedSkin];
//}
//- (IBAction)changeSkinSBtnClick:(UIButton *)sender {
//    switch (sender.tag) {
//        case 1:
//            [self setImagesWithRedSkin];
//            break;
//        case 2:
//            [self setImagesWithGreenSkin];
//            break;
//        case 3:
//            [self setImagesWithBlueSkin];
//            break;
//        default:
//            break;
//    }
//}
//
///* remember choose "Create folder references" when dragging the images into the project */
//- (void)setImagesWithRedSkin{
//    self.starImageView.image = [UIImage imageNamed:@"skin/red/star"];
//    self.circleImageView.image = [UIImage imageNamed:@"skin/red/circle"];
//    self.rectImageView.image = [UIImage imageNamed:@"skin/red/rect"];
//}
//- (void)setImagesWithGreenSkin{
//    self.starImageView.image = [UIImage imageNamed:@"skin/green/star"];
//    self.circleImageView.image = [UIImage imageNamed:@"skin/green/circle"];
//    self.rectImageView.image = [UIImage imageNamed:@"skin/green/rect"];
//}
//- (void)setImagesWithBlueSkin{
//    self.starImageView.image = [UIImage imageNamed:@"skin/blue/star"];
//    self.circleImageView.image = [UIImage imageNamed:@"skin/blue/circle"];
//    self.rectImageView.image = [UIImage imageNamed:@"skin/blue/rect"];
//}


@end
