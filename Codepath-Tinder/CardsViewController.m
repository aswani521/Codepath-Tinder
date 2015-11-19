//
//  ViewController.m
//  Codepath-Tinder
//
//  Created by Aswani Nerella on 11/19/15.
//  Copyright © 2015 Aswani Nerella. All rights reserved.
//

#import "CardsViewController.h"

@interface CardsViewController ()
@property (nonatomic, assign) CGPoint imgInitialCenter;
@property (weak, nonatomic) IBOutlet UIImageView *ryanImg;
@property (nonatomic, assign) CGPoint imgCenterBeforeGestureStarted;

@end

@implementation CardsViewController
- (IBAction)onPanGesture:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self.view];
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.imgCenterBeforeGestureStarted = self.ryanImg.center;
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        NSLog(@"Velocity: %@", NSStringFromCGPoint([sender velocityInView:self.view]));

        
//        if (translation.x > 0) {
//            self.direction = NO;
//        } else {
//            self.direction = YES;
//        }
        self.ryanImg.center = CGPointMake(self.imgInitialCenter.x + translation.x, self.imgInitialCenter.y);
        
    } else if (sender.state == UIGestureRecognizerStateEnded) {
        //        NSLog(@"Gesture ended at: %@", NSStringFromCGPoint(location));
        self.ryanImg.center = CGPointMake(self.imgInitialCenter.x + translation.x, self.imgInitialCenter.y);
        
//        if (self.direction) {
//            self.ryanImg.center = self.trayCenterOpen;
//        } else {
//            self.ryanImg.center = self.trayCenterClosed;
//        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgInitialCenter = self.ryanImg.center ;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
