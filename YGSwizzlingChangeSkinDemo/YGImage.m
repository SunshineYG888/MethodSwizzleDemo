//
//  YGImage.m
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import "YGImage.h"

static YGImageMode _mode;

@implementation YGImage

+ (void)setMode:(YGImageMode)mode{
    _mode = mode;
}

+ (YGImageMode)mode{
    return _mode;
}

@end
