//
//  NSMutableArray+LBSafe.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "NSMutableArray+LBSafe.h"
#import "LBSafeLog.h"

@implementation NSMutableArray (LBSafe)

- (void)lbsafe_addObject:(id)anObject{
    if (nil != anObject) {
        [self addObject:anObject];
    }
    else {
        LBSafeLog(@"anObject:%@", anObject);
    }
}

- (void)lbsafe_addObject:(id)anObject withClass:(Class)aClass{
    if (nil != anObject && [anObject isKindOfClass:aClass]) {
        [self addObject:anObject];
    }
    else {
        LBSafeLog(@"anObject:%@", anObject);
    }
}

- (void)lbsafe_addObjectsFromArray:(NSArray *)objects{
    if(objects && objects.count){
        [self addObjectsFromArray:objects];
    }
    else {
        LBSafeLog(@"objects:%@", objects);
    }
}

- (void)lbsafe_insertObject:(id)anObject atIndex:(NSUInteger)index{
    if (nil != anObject && index <= self.count) {
        [self insertObject:anObject atIndex:index];
    }
    else {
        LBSafeLog(@"count:%lu anObject:%@ index:%lu", (unsigned long)self.count, anObject, (unsigned long)index);
    }
}

- (void)lbsafe_removeObjectAtIndex:(NSUInteger)index{
    if (index < self.count) {
        [self removeObjectAtIndex:index];
    }
    else {
        LBSafeLog(@"count:%lu index:%lu", (unsigned long)self.count, (unsigned long)index);
    }
}

- (void)lbsafe_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject{
    if (nil != anObject && index < self.count) {
        [self replaceObjectAtIndex:index withObject:anObject];
    }
    else {
        LBSafeLog(@"count:%lu anObject:%@ index:%lu", (unsigned long)self.count, anObject, (unsigned long)index);
    }
}

- (void)lbsafe_exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2{
    if (idx1 < self.count && idx2 < self.count) {
        [self exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
    }
    else {
        LBSafeLog(@"count:%lu index1:%lu index2:%lu", (unsigned long)self.count, (unsigned long)idx1, (unsigned long)idx2);
    }
}

- (void)lbsafe_removeObject:(id)anObject inRange:(NSRange)range{
    if (range.location + range.length <= self.count) {
        [self removeObject:anObject inRange:range];
    }
    else {
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range{
    if (range.location + range.length <= self.count) {
        [self removeObjectIdenticalTo:anObject inRange:range];
    }
    else {
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_removeObjectsInRange:(NSRange)range{
    if (range.location + range.length <= self.count) {
        [self removeObjectsInRange:range];
    }
    else {
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray{
    if (range.location + range.length <= self.count) {
        [self replaceObjectsInRange:range withObjectsFromArray:otherArray];
    }
    else {
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length);
    }
}

- (void)lbsafe_replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange{
    if (range.location + range.length <= self.count && otherRange.location + otherRange.length <= otherArray.count) {
        [self replaceObjectsInRange:range withObjectsFromArray:otherArray range:otherRange];
    }
    else {
        LBSafeLog(@"count:%lu MakeRage(%lu,%lu) otherCount:%lu OtherRange(%lu,%lu)", (unsigned long)self.count, (unsigned long)range.location, (unsigned long)range.length, (unsigned long)otherArray.count, (unsigned long)otherRange.location, (unsigned long)otherRange.length);
    }
}

- (void)lbsafe_insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes{
    if (nil != objects && indexes.count == objects.count && indexes.firstIndex <= self.count && indexes.lastIndex <= self.count) {
        [self insertObjects:objects atIndexes:indexes];
    }
    else {
        LBSafeLog(@"count:%lu objects:%@ indexesCount:%lu indexesFirstIndex:%lu indexesLastIndex:%lu", (unsigned long)self.count, objects, (unsigned long)indexes.count, (unsigned long)indexes.firstIndex, (unsigned long)indexes.lastIndex);
    }
}

- (void)lbsafe_removeObjectsAtIndexes:(NSIndexSet *)indexes{
    if (indexes.firstIndex < self.count && indexes.lastIndex < self.count) {
        [self removeObjectsAtIndexes:indexes];
    }
    else {
        LBSafeLog(@"count:%lu indexesCount:%lu indexesFirstIndex:%lu indexesLastIndex:%lu", (unsigned long)self.count, (unsigned long)indexes.count, (unsigned long)indexes.firstIndex, (unsigned long)indexes.lastIndex);
    }
}

- (void)lbsafe_replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects{
    if (nil != objects && indexes.count == objects.count && indexes.firstIndex < self.count && indexes.lastIndex < self.count) {
        [self replaceObjectsAtIndexes:indexes withObjects:objects];
    }
    else {
        LBSafeLog(@"count:%lu objects:%@ indexesCount:%lu indexesFirstIndex:%lu indexesLastIndex:%lu", (unsigned long)self.count, objects, (unsigned long)indexes.count, (unsigned long)indexes.firstIndex, (unsigned long)indexes.lastIndex);
    }
}

@end
