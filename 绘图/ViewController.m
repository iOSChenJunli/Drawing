//
//  ViewController.m
//  绘图
//
//  Created by YideNet on 16/5/19.
//  Copyright © 2016年 CJL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
}
@property (nonatomic ,strong)CAShapeLayer *shapeLayer;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.shapeLayer =[CAShapeLayer layer];
    self.shapeLayer.frame =CGRectMake(0, 0, 100, 100);
    self.shapeLayer.position= self.view.center;
    self.shapeLayer.fillColor = [UIColor redColor].CGColor;
    
    self.shapeLayer.lineWidth = 4.0f;
    self.shapeLayer.strokeColor = [UIColor greenColor].CGColor;
    
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    
    self.shapeLayer.path=circlePath.CGPath;
    [self.view.layer addSublayer:self.shapeLayer];
    
    self.shapeLayer.strokeStart=0;
    self.shapeLayer.strokeEnd=0;
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(circleAnimation) userInfo:nil repeats:YES];
    //[[NSRunLoop mainRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    
   

}

-(void)circleAnimation{
    if (self.shapeLayer.strokeEnd<0.75) {
        self.shapeLayer.strokeStart+=0.01;
        self.shapeLayer.strokeEnd+=0.02;
    }else{
        [timer invalidate];
    }
}

@end
