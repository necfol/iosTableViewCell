//
//  NecfolTableViewCell.h
//  iosTableViewCell
//
//  Created by necfol on 2017/8/21.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NecfolTableViewCell : UITableViewCell

+(instancetype)cellWithTable: (UITableView *)tableView;

-(void)setVal: (NSString *)string;
@end
