//
//  NecfolTableViewCell.m
//  iosTableViewCell
//
//  Created by necfol on 2017/8/21.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolTableViewCell.h"

@interface NecfolTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *NecfolLabel;


@end

@implementation NecfolTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(instancetype)cellWithTable:(UITableView *)tableView {
    NSString *ID = @"cell";
    NecfolTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([NecfolTableViewCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}
-(void)setVal:(NSString *)string {
    self.NecfolLabel.text = string;
}
@end
