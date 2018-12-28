//
//  NSArray+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSArray+LBSafe.h"
#import "LBSafeLog.h"

@implementation NSArray (LBSafe)

+ (id)lbsafe_arrayWithObject:(id)anObject{
    if (nil != anObject) {
        return [self arrayWithObject:anObject];
    } else {
        LBSafeLog(@"anObject:%@", anObject);
        return nil;
    }
}

- (id)lbsafe_objectAtIndex:(NSUInteger)index{
    if (index < self.count){
        return [self objectAtIndex:index];
    } else {
        LBSafeLog(@"count:%lu index:%lu", (unsigned long)self.count, (unsigned long)index);
        return nil;
    }
}


- (NSArray *)lbsafe_subarrayWithRange:(NSRange)range{
    if (range.location+range.length <= self.count){
        return [self subarrayWithRange:range];
    }else{
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length);
        return nil;
    }
}

- (NSArray *)lbsafe_objectsAtIndexes:(NSIndexSet *)indexes{
    if (indexes.firstIndex < self.count && indexes.lastIndex < self.count){
        return [self objectsAtIndexes:indexes];
    }else{
        LBSafeLog(@"count:%lu indexes(%lu-%lu)", (unsigned long)self.count, (unsigned long)indexes.firstIndex, (unsigned long)indexes.lastIndex);
        return nil;
    }
}

- (NSArray *)lbsafe_arrayByAddingObject:(id)anObject{
    if (anObject) {
        return [self arrayByAddingObject:anObject];
    }else{
        LBSafeLog(@"anObject:%@", anObject);
        return [self copy];
    }
}
- (NSArray *)lbsafe_arrayByAddingObjectsFromArray:(NSArray *)otherArray{
    if (otherArray && [otherArray isKindOfClass:[NSArray class]]) {
        return [self arrayByAddingObjectsFromArray:otherArray];
    }else{
        return [self copy];
    }
}

@end
