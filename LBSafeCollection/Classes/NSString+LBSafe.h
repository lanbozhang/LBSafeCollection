//
//  NSString+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>


@interface NSString (LBSafe)

- (NSString *)lb_safesubstringFromIndex:(NSUInteger)from;

- (NSString *)lb_safesubstringToIndex:(NSUInteger)to;

- (NSString *)lb_safesubstringWithRange:(NSRange)range;

- (NSString *)lb_safestringByAppendingString:(NSString *)aString;

- (NSString *)lb_safestringByReplacingOccurrencesOfString:(NSString *)target
                                                withString:(NSString *)replacement
                                                   options:(NSStringCompareOptions)options
                                                     range:(NSRange)searchRange;

- (NSString *)lb_safestringByReplacingCharactersInRange:(NSRange)range
                                              withString:(NSString *)replacement;

@end

