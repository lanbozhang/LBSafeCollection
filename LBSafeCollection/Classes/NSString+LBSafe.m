//
//  NSString+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSString+LBSafe.h"
#import "LBSafeLog.h"

@implementation NSString (LBSafe)

- (NSString *)lb_safesubstringFromIndex:(NSUInteger)from{
    if (from <= self.length) {
        return [self substringFromIndex:from];
    }
    else{
        LBSafeLog(@"length:%lu from:%lu", (unsigned long)self.length, (unsigned long)from);
        return nil;
    }
}

- (NSString *)lb_safesubstringToIndex:(NSUInteger)to{
    if (to <= self.length) {
        return [self substringToIndex:to];
    }
    else{
        LBSafeLog(@"length:%lu to:%lu", (unsigned long)self.length, (unsigned long)to);
        return nil;
    }
}

- (NSString *)lb_safesubstringWithRange:(NSRange)range{
    if (range.location+range.length <= self.length) {
        return [self substringWithRange:range];
    } else {
        LBSafeLog(@"length:%lu Range(%lu,%lu)", (unsigned long)self.length, (unsigned long)range.location, (unsigned long)range.length);
        return nil;
    }
}

- (NSString *)lb_safestringByAppendingString:(NSString *)aString{
    if (nil != aString) {
        return [self stringByAppendingString:aString];
    }else{
        LBSafeLog(@"string:%@", aString);
        return nil;
    }
}

- (NSString *)lb_safestringByPaddingToLengthForIndex:(NSUInteger)newLength withString:(NSString *)padString startingAtIndex:(NSUInteger)padIndex{
    if (padIndex == 0 && nil != padString && ![padString isEqualToString:@""]) {
        return [self stringByPaddingToLength:newLength withString:padString startingAtIndex:padIndex];
    } else {
        LBSafeLog(@"newLength:%lu padString:%@ padIndex:%lu", (unsigned long)newLength, padString, (unsigned long)padIndex);
        return nil;
    }
}
- (NSString *)lb_safestringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange{
    if (searchRange.location + searchRange.length <= self.length) {
        return [self stringByReplacingOccurrencesOfString:target withString:replacement options:options range:searchRange];
    } else {
        LBSafeLog(@"length:%lu target:%@ replacement:%@ searchRange(%lu,%lu)", (unsigned long)self.length, target, replacement, (unsigned long)searchRange.location, (unsigned long)searchRange.length);
        return nil;
    }
}

- (NSString *)lb_safestringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement {
    if (range.location + range.length <= self.length) {
        return [self stringByReplacingCharactersInRange:range withString:replacement];
    } else {
        LBSafeLog(@"length:%lu replacement:%@ range(%lu,%lu)", (unsigned long)self.length, replacement, (unsigned long)range.location, (unsigned long)range.length);
        return nil;
    }
}

@end
