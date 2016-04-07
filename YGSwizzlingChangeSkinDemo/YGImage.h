//
//  YGImage.h
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, YGImageMode) {
    YGImageModePlain,
    YGImageModeSkin
};

@interface YGImage : NSObject

+ (void)setMode:(YGImageMode)mode;

+ (YGImageMode)mode;

@end
