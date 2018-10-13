//
//  MasterTableHeader.m
//  DaleTou
//
//  Created by  on 2018/5/28.
//  Copyright © 2018年 geren. All rights reserved.
//

#import "MasterTableHeader.h"

@implementation MasterTableHeader

+ (instancetype )defaultClassNameNibView
{
    
    NSArray *views = [[UINib nibWithNibName:@"MaterListTableCell" bundle:nil] instantiateWithOwner:nil options:nil];
    
    for (UIView *custom in views) {
        if ([custom isMemberOfClass:[self class]]) {
            return custom;
        }
    }
    NSAssert(NO, @"Expect file: %@", [NSString stringWithFormat:@"%@.xib", NSStringFromClass([self class])]);
    return nil;
}

- (IBAction)btnPressed:(UIButton *)sender {
    
    NSInteger index = sender.tag;
    !self.selcetpressed? :self.selcetpressed(index);
}

@end
