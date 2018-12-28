//
//  NSArray+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>

@interface NSArray<ObjectType> (LBSafe)

+ (id)lbsafe_arrayWithObject:(id)anObject;
- (id)lbsafe_objectAtIndex:(NSUInteger)index;
- (NSArray<ObjectType> *)lbsafe_subarrayWithRange:(NSRange)range;
- (NSArray<ObjectType> *)lbsafe_objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray<ObjectType> *)lbsafe_arrayByAddingObject:(ObjectType)anObject;
- (NSArray<ObjectType> *)lbsafe_arrayByAddingObjectsFromArray:(NSArray<ObjectType> *)otherArray;

@end

