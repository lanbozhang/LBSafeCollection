//
//  NSAttributedString+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (LBSafe)

- (instancetype)lbsafe_initWithString:(NSString *)str;

- (instancetype)lbsafe_initWithString:(NSString *)str attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs;

@end
