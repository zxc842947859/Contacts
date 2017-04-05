//
//  HMTableViewCell.m
//  联系人
//
//  Created by chao on 2017/4/5.
//  Copyright © 2017年 chao. All rights reserved.
//

#import "HMTableViewCell.h"
#import "HMContact.h"
#import "UIImageView+WebCache.h"

@interface HMTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end
@implementation HMTableViewCell

- (void)setContact:(HMContact *)contact {
    _contact = contact;
    _nameLabel.text = [NSString stringWithFormat:@"姓名:%@", contact.name];
    _ageLabel.text = [NSString stringWithFormat:@"年龄:%zd", contact.age];
    [_iconView sd_setImageWithURL:[NSURL URLWithString:contact.imageName]];
}

@end
