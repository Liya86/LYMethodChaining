//
//  ViewController.m
//  LYMethodChaining
//
//  Created by Liya on 2018/2/5.
//  Copyright © 2018年 Liya. All rights reserved.
//

#import "ViewController.h"
#import "LYMethodChaining.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [[UIView alloc] init].mc_tag(1).mc_width(30).mc_height(20).mc_bottom(200).mc_backgroundColor([UIColor yellowColor]).mc_alpha(0.8);
    UITextField *textField = [[UITextField alloc] init].mc_font([UIFont systemFontOfSize:12]).mc_placeholder(@"赚钱要紧").mc_text(@"世界和平");

    NSMutableArray *array = [NSMutableArray array].mc_addObject(@1).mc_addObject(@2).mc_addObjects(@[@3, @4]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
