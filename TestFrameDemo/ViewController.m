//
//  ViewController.m
//  TestFrameDemo
//
//  Created by xiaomin he on 2018/12/7.
//  Copyright © 2018年 xiaomin he. All rights reserved.
//

#import "ViewController.h"
#import <demoframework/demoframework-Swift.h>
#import "LocalViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *showFrameBtn;
@property (weak, nonatomic) IBOutlet UIButton *showLocalBtn;

@end

@implementation ViewController
- (IBAction)showLocalView:(id)sender {
    NSLog(@"showLocalView");
    LocalViewController * LocalView = [[LocalViewController alloc] init];
    [self.navigationController pushViewController: LocalView animated:true];
    
//    LocalViewController * LocalView = [[LocalViewController alloc] init];
//    [self presentViewController:LocalView  animated:YES completion:nil];
    
}
- (IBAction)showFrameView:(id)sender {
    NSLog(@"showFrameView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ClassForOc *swift= [[ClassForOc alloc] init];
    NSString* text  = [swift hello];
    NSLog(@"     **** %@" ,text);
    
    [ClassForOc sayWithName:@"OC String"];

    NSLog(@"%@",[ClassForOc textForOc]);
   
    
}


@end
