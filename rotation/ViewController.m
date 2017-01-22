//
//  ViewController.m
//  rotation
//
//  Created by jfdreamyang on 21/01/2017.
//  Copyright © 2017 jfdreamyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView * aView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    button.frame=CGRectMake(100, 300, 100, 100);
    button.backgroundColor=[UIColor redColor];
    [self.view addSubview:button];
    
    aView=[[UIView alloc]init];
    aView.backgroundColor=[UIColor lightGrayColor];
    aView.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:aView];
    
    NSLayoutConstraint * _cons=[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:30];
    [self.view addConstraint:_cons];
    
    NSLayoutConstraint * _cons1=[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeWidth multiplier:1.f constant:0];
    [self.view addConstraint:_cons1];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    
     [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
    
    
    UIView * t=[[UIView alloc]init];
    t.backgroundColor=[UIColor redColor];
    t.translatesAutoresizingMaskIntoConstraints=NO;
    [aView addSubview:t];
    
    
    _cons=[NSLayoutConstraint constraintWithItem:t attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:15];
    [self.view addConstraint:_cons];
    
    _cons1=[NSLayoutConstraint constraintWithItem:t attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:t attribute:NSLayoutAttributeWidth multiplier:1.f constant:0];
    [self.view addConstraint:_cons1];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:t attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:t attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
    
}

-(void)buttonClick{
    static BOOL hello=NO;
    hello=!hello;
    [UIView animateWithDuration:0.5 animations:^{
        if (hello) {
            aView.transform=CGAffineTransformMakeRotation(145*M_PI/180);
        }
        else{
            aView.transform=CGAffineTransformMakeRotation(0);
        }
    }];
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
