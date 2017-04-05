//
//  ViewController.m
//  联系人
//
//  Created by chao on 2017/4/5.
//  Copyright © 2017年 chao. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "HMContact.h"
#import "HMTableViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *contacts;
@end
static NSString *ID = @"contact";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // https://raw.githubusercontent.com/zxc842947859/Contacts/master/contacts.json
    
    [[AFHTTPSessionManager manager] GET:@"https://raw.githubusercontent.com/zxc842947859/Contacts/master/contacts.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSMutableArray *arrM = [NSMutableArray array];
        for (NSDictionary *dict in responseObject) {
            [arrM addObject:[HMContact contactWithDict:dict]];
            
        }
        _contacts = arrM;
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (error) {
            NSLog(@"%@", error);
            return ;
        }
    }];
    UINib *nib = [UINib nibWithNibName:@"HMTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:ID];
    
    self.tableView.rowHeight = 60;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HMTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    cell.contact = _contacts[indexPath.row];
    return cell;
}



@end
