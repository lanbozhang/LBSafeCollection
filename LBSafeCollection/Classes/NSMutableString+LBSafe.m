//
//  NSMutableString+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSMutableString+LBSafe.h"
#import "LBSafeLog.h"

@implementation NSMutableString (LBSafe)

- (void)lbsafe_replaceCharactersInRange:(NSRange)range withString:(NSString *)aString{
    if (nil != aString && range.location+range.length <= self.length) {
        [self replaceCharactersInRange:range withString:aString];
    }
    else {
        LBSafeLog(@"length:%lu aString:%@ range(%lu,%lu)", (unsigned long)self.length, aString, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_insertString:(NSString *)aString atIndex:(NSUInteger)loc{
    if (nil != aString && loc <= self.length) {
        [self insertString:aString atIndex:loc];
    }
    else {
        LBSafeLog(@"length:%lu aString:%@ loc:%lu", (unsigned long)self.length, aString, (unsigned long)loc);
    }
}

- (void)lbsafe_deleteCharactersInRange:(NSRange)range{
    if (range.location + range.length <= self.length) {
        [self deleteCharactersInRange:range];
    }
    else {
        LBSafeLog(@"length:%lu range(%lu,%lu)", (unsigned long)(unsigned long)self.length, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_appendString:(NSString *)aString{
    if (nil != aString) {
        [self appendString:aString];
    }
    else {
        LBSafeLog(@"aString:%@", aString);
    }
}

- (void)lbsafe_setString:(NSString *)aString{
    if (nil != aString) {
        [self setString:aString];
    } else {
        LBSafeLog(@"aString:%@", aString);
    }
}

- (NSUInteger)lbsafe_replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange{
    if (nil != target && nil != replacement && searchRange.location + searchRange.length <= self.length) {
        return [self replaceOccurrencesOfString:target withString:replacement options:options range:searchRange];
    } else {
        LBSafeLog(@"length:%lu target:%@ replacement:%@ searchRage(%lu,%lu)", (unsigned long)self.length, target, replacement, (unsigned long)searchRange.location, (unsigned long)searchRange.length);
        return 0;
    }
}

@end
