//
//  NSMutableArray+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (LBSafe)

- (void)lbsafe_addObject:(id)anObject;
- (void)lbsafe_addObject:(id)anObject withClass:(Class)aClass;
- (void)lbsafe_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)lbsafe_removeObjectAtIndex:(NSUInteger)index;
- (void)lbsafe_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
- (void)lbsafe_exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
- (void)lbsafe_removeObject:(id)anObject inRange:(NSRange)range;
- (void)lbsafe_removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
- (void)lbsafe_removeObjectsInRange:(NSRange)range;
- (void)lbsafe_replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray;
- (void)lbsafe_replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange;
- (void)lbsafe_insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
- (void)lbsafe_removeObjectsAtIndexes:(NSIndexSet *)indexes;
- (void)lbsafe_replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
- (void)lbsafe_addObjectsFromArray:(NSArray *)objects;

@end
