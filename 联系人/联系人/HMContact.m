//
//  HMContact.m
//  联系人
//
//  Created by chao on 2017/4/5.
//  Copyright © 2017年 chao. All rights reserved.
//

#import "HMContact.h"

@implementation HMContact
+ (instancetype)contactWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}
@end
