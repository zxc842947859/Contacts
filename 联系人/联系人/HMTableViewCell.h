//
//  HMTableViewCell.h
//  联系人
//
//  Created by chao on 2017/4/5.
//  Copyright © 2017年 chao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HMContact;
@interface HMTableViewCell : UITableViewCell
@property (nonatomic, strong) HMContact *contact;
@end
