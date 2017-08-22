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
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"测试";
        self.NecfolLabel = label;
        [self.contentView addSubview:label];
    }
    return self;
}
-(void)layoutSubviews {
    self.NecfolLabel.frame = CGRectMake(0, 0, 100, 50);
}
@end
