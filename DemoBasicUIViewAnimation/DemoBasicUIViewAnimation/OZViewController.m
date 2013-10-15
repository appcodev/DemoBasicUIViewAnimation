//
//  OZViewController.m
//  DemoBasicUIViewAnimation
//
//  Created by Chalermchon Samana on 10/16/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import "OZViewController.h"
@import QuartzCore;

@interface OZViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *grimImage;

@end

@implementation OZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)animateGrim:(id)sender {
    //animate grim
    //NSLog(@"animation key : %@",self.grimImage.layer.animationKeys);
    if (self.grimImage.layer.animationKeys==nil) {
        [UIView animateWithDuration:2
                         animations:^{
                             self.grimImage.transform = CGAffineTransformMakeScale(0.2, 0.2);
                             self.grimImage.transform = CGAffineTransformMakeRotation(M_PI);
                             
                             
                         }
                         completion:^(BOOL finished){
                             //if (finished) {
                             //   NSLog(@"finished...");
                             [UIView animateWithDuration:2
                                              animations:^{
                                                  self.grimImage.transform = CGAffineTransformIdentity;
                                              }];
                             
                             //}else{
                             //    NSLog(@"not finished");
                             //}
                         }];
    }
    
}

@end
