//
//  LocalViewController.m
//  TestFrameDemo
//
//  Created by xiaomin he on 2018/12/10.
//  Copyright © 2018年 xiaomin he. All rights reserved.
//

#import "LocalViewController.h"

@interface LocalViewController ()
@property (weak, nonatomic) IBOutlet UIButton *CloseBtn;

@end

@implementation LocalViewController
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"LocalViewController    viewDidLoad");
}

-(void) viewDidAppear:(BOOL)animated {
    NSLog(@"LocalViewController    viewDidAppear  %d", animated);
}

-(void) viewWillDisappear:(BOOL)animated {
    NSLog(@"LocalViewController    viewWillDisappear   %d" , animated);
}

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"LocalViewController    initWithNibName   %@" , nibNameOrNil);
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
