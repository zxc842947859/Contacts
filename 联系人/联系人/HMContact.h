//
//  HMContact.h
//  联系人
//
//  Created by chao on 2017/4/5.
//  Copyright © 2017年 chao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMContact : NSObject
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

+ (instancetype)contactWithDict:(NSDictionary *)dict;
@end
