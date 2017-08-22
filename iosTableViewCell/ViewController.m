//
//  ViewController.m
//  iosTableViewCell
//
//  Created by necfol on 2017/8/21.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "ViewController.h"
#import "NecfolTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tableView = [[UITableView alloc] init];
    tableView.dataSource = self;
    tableView.frame = self.view.bounds;
    [self.view addSubview:tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NecfolTableViewCell *cell = [NecfolTableViewCell cellWithTable:tableView];
//    [cell setVal:@"ddddd"];
    NSString *ID = @"cell";
    NecfolTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[NecfolTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}
@end
