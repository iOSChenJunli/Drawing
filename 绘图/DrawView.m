//
//  DrawView.m
//  绘图
//
//  Created by YideNet on 16/5/19.
//  Copyright © 2016年 CJL. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView
-(id)initWithFrame:(CGRect)frame{
    self= [super initWithFrame:frame];
    if (self) {
        self.layer.backgroundColor=[UIColor yellowColor].CGColor;
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.backgroundColor=[UIColor yellowColor];
        
       }
    return self;
}
-(void)drawRect:(CGRect)rect{
//    /**
//     UIKit
//     */
//    UIBezierPath *p =[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
//    [[UIColor blueColor] setFill];
//    [p fill];
//    
//    /**
//     Core Graphics
//     */
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(con, CGRectMake(0, 150, 100, 100));
//    CGContextSetFillColorWithColor(con, [UIColor redColor].CGColor);
//    CGContextFillPath(con);
    /**
     UIBezierPath 绘制三角形
     */
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(self.bounds.size.width-40, 20)];
    [path addLineToPoint:CGPointMake(self.center.x, self.center.y)];
    [path closePath];
    path.lineWidth=2.0f;
    [[UIColor redColor] set];
    [path fill];
    
    [[UIColor blueColor] set];
    [path stroke];
    
    /**
     UIBezierPath 绘制矩形
     */
    
    UIBezierPath *rectangularPath =[UIBezierPath bezierPath];
    
    rectangularPath.lineWidth =2.0f;
    
    [rectangularPath moveToPoint:CGPointMake(20, 150)];
    [rectangularPath addLineToPoint:CGPointMake(200, 150)];
    [rectangularPath addLineToPoint:CGPointMake(200, 300)];
    [rectangularPath addLineToPoint:CGPointMake(20, 300)];
    [rectangularPath closePath];
    
    [[UIColor greenColor] set];
    [rectangularPath stroke];
    
    [[UIColor blueColor] set];
    [rectangularPath fill];
    
    
    
    
}




@end
