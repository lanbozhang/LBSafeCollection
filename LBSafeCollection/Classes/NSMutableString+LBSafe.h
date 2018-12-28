//
//  NSMutableString+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>


@interface NSMutableString (LBSafe)

- (void)lbsafe_replaceCharactersInRange:(NSRange)range withString:(NSString *)aString;
- (void)lbsafe_insertString:(NSString *)aString atIndex:(NSUInteger)loc;
- (void)lbsafe_deleteCharactersInRange:(NSRange)range;
- (void)lbsafe_appendString:(NSString *)aString;
- (void)lbsafe_setString:(NSString *)aString;
- (NSUInteger)lbsafe_replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;

@end

