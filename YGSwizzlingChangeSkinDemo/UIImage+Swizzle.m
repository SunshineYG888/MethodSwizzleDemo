//
//  UIImage+Extension.m
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import "UIImage+Swizzle.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "YGImage.h"
#import "YGSkin.h"


@implementation UIImage (Swizzle)

/* we can exchange custom methods and system methods in class method "+ load" */
+ (void)load{
    
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        
        Method originalMethod = class_getClassMethod([self class], @selector(imageNamed:));
        Method newMethod = class_getClassMethod([self class], @selector(newImageNamed:));

        method_exchangeImplementations(originalMethod, newMethod);
    });
}

/* new method used to be exchanged with the older one */
+ (UIImage *)newImageNamed:(NSString *)imageName{
    
    NSString *fullImageName = imageName;
    
    if ([YGImage mode] == YGImageModeSkin) {
        switch ([YGSkin style]) {
            case YGSkinStyleRed:
                fullImageName = [NSString stringWithFormat:@"skin/red/%@", imageName];
                break;
            case YGSkinStyleGreen:
                fullImageName = [NSString stringWithFormat:@"skin/green/%@", imageName];
                break;
            case YGSkinStyleBlue:
                fullImageName = [NSString stringWithFormat:@"skin/blue/%@", imageName];
                break;
            default:
                break;
        }
    }
    
    return [UIImage newImageNamed:fullImageName];   // actually call - imageNamed:
}
@end

