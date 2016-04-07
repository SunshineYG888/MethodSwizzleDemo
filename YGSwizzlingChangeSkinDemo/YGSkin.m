//
//  YGSkin.m
//  YGSwizzlingChangeSkinDemo
//
//  Created by male on 16/4/3.
//  Copyright © 2016年 com.yg. All rights reserved.
//

#import "YGSkin.h"

static YGSkinStyle _style;

@implementation YGSkin

+ (void)setStyel:(YGSkinStyle)style{
    _style = style;
}

+ (YGSkinStyle)style{
    return _style;
}

@end
