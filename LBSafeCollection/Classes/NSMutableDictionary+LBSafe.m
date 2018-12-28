//
//  NSMutableDictionary+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSMutableDictionary+LBSafe.h"
#import "LBSafeLog.h"

@implementation NSMutableDictionary (LBSafe)

- (void)lbsafe_setObject:(id)anObject forKey:(id)aKey{
    if (aKey && anObject) {
        [self lbsafe_setObject:anObject forKey:aKey];
    }else if (aKey){
        LBSafeLog(@"anObject:%@ key:%@", anObject, aKey);
        [self lbsafe_removeObjectForKey:aKey];
    }
}

- (void)lbsafe_removeObjectForKey:(id)aKey{
    if (aKey) {
        [self removeObjectForKey:aKey];
    }else{
        LBSafeLog(@"key:%@", aKey);
    }
}

@end
