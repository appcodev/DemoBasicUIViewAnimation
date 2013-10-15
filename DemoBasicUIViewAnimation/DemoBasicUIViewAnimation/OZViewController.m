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
- (IBAction)animateGrim:(UIButton*)sender {
    //animate grim
    [self animateGrimWithCheckAnimateRunning:sender.tag==1];
}

- (void)animateGrimWithCheckAnimateRunning:(BOOL)check{
    //if checked, we check animationKeys not null to start new animation ...
    BOOL allow = check?self.grimImage.layer.animationKeys==nil:YES;
    if (allow) {
        [UIView animateWithDuration:2
                         animations:^{
                             self.grimImage.transform = CGAffineTransformMakeScale(0.2, 0.2);
                             self.grimImage.transform = CGAffineTransformMakeRotation(M_PI);
                         }
                         completion:^(BOOL finished){
                             
                             //start animation reverse
                             [UIView animateWithDuration:2
                                              animations:^{
                                                  //to default transform ...
                                                  self.grimImage.transform = CGAffineTransformIdentity;
                                              }];
                             
                         }];
    }

}

@end
