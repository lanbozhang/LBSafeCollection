//
//  NSAttributedString+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSAttributedString+LBSafe.h"

@implementation NSAttributedString (LBSafe)

- (instancetype)lbsafe_initWithString:(NSString *)str{
    return [self initWithString:str?:@""];
}

- (instancetype)lbsafe_initWithString:(NSString *)str attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs{
    return [self initWithString:str?:@"" attributes:attrs?:@{}];
}

@end
