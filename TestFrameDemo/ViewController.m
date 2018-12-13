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
//    LocalViewController * LocalView = [[LocalViewController alloc] init];
//    [self.navigationController pushViewController: LocalView animated:true];
    
    LocalViewController * LocalView = [[LocalViewController alloc] init];
    [self presentViewController:LocalView  animated:YES completion:nil];
    NSLog(@"showLocalView  nibname      %@", LocalView.nibName);
    
}
- (IBAction)showFrameView:(id)sender {
    NSLog(@"showFrameView");
    
//    FrameworkViewController *frameView = [[FrameworkViewController alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"demoframework" ofType:@"framework"];
    NSBundle *myBundle = [NSBundle bundleWithPath:path];
    FrameworkViewController *frameView = [[FrameworkViewController alloc] initWithNibName :@"FrameworkViewController" bundle:myBundle];
    [self presentViewController:frameView  animated:YES completion:nil];
     NSLog(@"showFrameView  nibname      %@", frameView.nibName);
    
    //直接调用界面黑屏
//    FrameMainViewController *mainView = [[FrameMainViewController alloc] init];
//    [self presentViewController:mainView animated:YES completion:nil];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"demoframework" ofType:@"framework"];
//    NSLog(@"path = %@", path);
//
//    NSBundle *myBundle = [NSBundle bundleWithPath:path];
//    NSLog(@"myBunlde = %@", myBundle);
//
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"framework" bundle:myBundle];
//    NSLog(@"%@", storyboard);
//
//    FrameMainViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"FrameMainViewController"];
//    [self presentViewController:vc animated:YES completion:nil];
    

 
    
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

- (void)viewDidAppear:(BOOL)animated {
    //hidden navigationController
    self.navigationController.navigationBarHidden = YES;
}

@end
