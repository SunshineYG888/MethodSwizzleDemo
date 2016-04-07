//
//  YGSkin.h
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, YGSkinStyle) {
    YGSkinStyleRed,
    YGSkinStyleGreen,
    YGSkinStyleBlue
};

@interface YGSkin : NSObject

+ (void)setStyel:(YGSkinStyle)style;

+ (YGSkinStyle)style;

@end
