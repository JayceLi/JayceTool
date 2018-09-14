//
//  UIButton+Extension.h
//  JayceTool
//
//  Created by EX-LIJUN020 on 2018/7/29.
//  Copyright © 2018年 Jayce. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ButtonImageTitleStyle ) {
    ButtonImageTitleStyleDefault = 0,       //图片在左，文字在右，整体居中。
    ButtonImageTitleStyleLeft  = 0,         //图片在左，文字在右，整体居中。
    ButtonImageTitleStyleRight     = 2,     //图片在右，文字在左，整体居中。
    ButtonImageTitleStyleTop  = 3,          //图片在上，文字在下，整体居中。
    ButtonImageTitleStyleBottom    = 4,     //图片在下，文字在上，整体居中。
    ButtonImageTitleStyleCenterTop = 5,     //图片居中，文字在上距离按钮顶部。
    ButtonImageTitleStyleCenterBottom = 6,  //图片居中，文字在下距离按钮底部。
    ButtonImageTitleStyleCenterUp = 7,      //图片居中，文字在图片上面。
    ButtonImageTitleStyleCenterDown = 8,    //图片居中，文字在图片下面。
    ButtonImageTitleStyleRightLeft = 9,     //图片在右，文字在左，距离按钮两边边距
    ButtonImageTitleStyleLeftRight = 10,    //图片在左，文字在右，距离按钮两边边距
    ButtonImageTitleStyleLeftLeft = 11,     //图片在左，文字在右边，整体居左
    ButtonImageTitleStyleRightRight = 12,   //图片在左，文字在右边，整体居右边
};

@interface UIButton (Extension)

/*
 
 调整按钮的文本和image的布局，前提是title和image同时存在才会调整。
 padding是调整布局时整个按钮和图文的间隔。
 
 */
-(void)setButtonImageTitleStyle:(ButtonImageTitleStyle)style padding:(CGFloat)padding;

/*
 
 调整按钮的点击范围
 
 */
-(void)setEnlargedEdgeWithTop:(CGFloat)top
                         left:(CGFloat)left
                      botttom:(CGFloat)bottom
                        right:(CGFloat)right;
@end
