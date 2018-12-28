//
//  LBSafeDangerousAPIs.h
//  Pods
//
//  Created by lanbo_zhang on 2018/12/28.
//

#ifndef LBSafeDangerousAPIs_h
#define LBSafeDangerousAPIs_h

@interface NSAttributedString (LBSafeDangerousAPI)

- (instancetype)initWithString:(NSString *)str  NS_UNAVAILABLE;
- (instancetype)initWithString:(NSString *)str attributes:(nullable NSDictionary<NSAttributedStringKey, id> *)attrs  NS_UNAVAILABLE;

@end

@interface NSArray<ObjectType>  (LBSafeDangerousAPI)

+ (id)arrayWithObject:(id)anObject NS_UNAVAILABLE;
- (id)objectAtIndex:(NSUInteger)index NS_UNAVAILABLE;
- (NSArray *)subarrayWithRange:(NSRange)range NS_UNAVAILABLE;
- (NSArray *)objectsAtIndexes:(NSIndexSet *)indexes NS_UNAVAILABLE;
- (NSArray *)arrayByAddingObject:(ObjectType)anObject NS_UNAVAILABLE;
- (NSArray *)arrayByAddingObjectsFromArray:(NSArray<ObjectType> *)otherArray NS_UNAVAILABLE;

@end

@interface NSMutableArray  (LBSafeDangerousAPI)

- (void)addObject:(id)anObject NS_UNAVAILABLE;
- (void)addObject:(id)anObject withClass:(Class)aClass NS_UNAVAILABLE;
- (void)insertObject:(id)anObject atIndex:(NSUInteger)index NS_UNAVAILABLE;
- (void)removeObjectAtIndex:(NSUInteger)index NS_UNAVAILABLE;
- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject NS_UNAVAILABLE;
- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2 NS_UNAVAILABLE;
- (void)removeObject:(id)anObject inRange:(NSRange)range NS_UNAVAILABLE;
- (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range NS_UNAVAILABLE;
- (void)removeObjectsInRange:(NSRange)range;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray NS_UNAVAILABLE;
- (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange NS_UNAVAILABLE;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes NS_UNAVAILABLE;
- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes NS_UNAVAILABLE;
- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects NS_UNAVAILABLE;
- (void)addObjectsFromArray:(NSArray *)objects NS_UNAVAILABLE;

@end

@interface NSMutableDictionary (LBSafeDangerousAPI)

- (void)setObject:(id)anObject forKey:(id)aKey NS_UNAVAILABLE;
- (void)removeObjectForKey:(id)aKey NS_UNAVAILABLE;

@end

@interface NSString (LBSafeDangerousAPI)

- (NSString *)substringFromIndex:(NSUInteger)from NS_UNAVAILABLE;
- (NSString *)substringToIndex:(NSUInteger)to NS_UNAVAILABLE;
- (NSString *)substringWithRange:(NSRange)range NS_UNAVAILABLE;
- (NSString *)stringByAppendingString:(NSString *)aString NS_UNAVAILABLE;
- (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target
                                        withString:(NSString *)replacement
                                           options:(NSStringCompareOptions)options
                                             range:(NSRange)searchRange NS_UNAVAILABLE;
- (NSString *)stringByReplacingCharactersInRange:(NSRange)range
                                      withString:(NSString *)replacement NS_UNAVAILABLE;

@end

@interface NSMutableString (LBSafeDangerousAPI)

- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)aString NS_UNAVAILABLE;
- (void)insertString:(NSString *)aString atIndex:(NSUInteger)loc NS_UNAVAILABLE;
- (void)deleteCharactersInRange:(NSRange)range NS_UNAVAILABLE;
- (void)appendString:(NSString *)aString NS_UNAVAILABLE;
- (void)setString:(NSString *)aString NS_UNAVAILABLE;
- (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange NS_UNAVAILABLE;

@end

#endif /* LBSafeDangerousAPIs_h */
