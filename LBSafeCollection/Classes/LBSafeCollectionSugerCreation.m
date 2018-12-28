//
//  LBSafeCollectionSugerCreation.m
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import "LBSafeCollection.h"
#import <objc/runtime.h>
#import "LBSafeLog.h"

@interface NSArray (LBSafeCollectionSugerCreation)

@end

@implementation NSArray (LBSafeCollectionSugerCreation)

+ (id)lbsafe_arrayWithObjects:(const id [])objects count:(NSUInteger)cnt{
    id validObjects[cnt];
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < cnt; i++){
        if (objects[i]){
            validObjects[count] = objects[i];
            count++;
        }
        else{
            LBSafeLog(@"[%@ %@] NIL object at index {%lu}",
                      NSStringFromClass([self class]),
                      NSStringFromSelector(_cmd),
                      (unsigned long)i);
        }
    }
    
    return [self lbsafe_arrayWithObjects:validObjects count:count];
}

@end


#pragma mark - NSDictionary

@interface NSDictionary (LBSafeCollectionSugerCreation)

@end

@implementation NSDictionary (LBSafeCollectionSugerCreation)

+ (instancetype)lbsafe_dictionaryWithObjects:(const id [])objects forKeys:(const id<NSCopying> [])keys count:(NSUInteger)cnt{
    id validObjects[cnt];
    id<NSCopying> validKeys[cnt];
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < cnt; i++){
        if (objects[i] && keys[i]){
            validObjects[count] = objects[i];
            validKeys[count] = keys[i];
            count ++;
        }
        else{
            LBSafeLog(@"[%@ %@] NIL object or key at index{%lu}.",
                      NSStringFromClass(self),
                      NSStringFromSelector(_cmd),
                      (unsigned long)i);
        }
    }
    
    return [self lbsafe_dictionaryWithObjects:validObjects forKeys:validKeys count:count];
}

@end

@interface LBSafeCollectionSugerCreation : NSObject

@end

@implementation LBSafeCollectionSugerCreation

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class arrayClass = [NSArray class];
        [self exchangeOriginalMethod:class_getClassMethod(arrayClass, @selector(arrayWithObjects:count:))
                       withNewMethod:class_getClassMethod(arrayClass, @selector(lbsafe_arrayWithObjects:count:))];
        Class dictClass = [NSDictionary class];
        [self exchangeOriginalMethod:class_getClassMethod(dictClass, @selector(dictionaryWithObjects:forKeys:count:))
                       withNewMethod:class_getClassMethod(dictClass, @selector(lbsafe_dictionaryWithObjects:forKeys:count:))];
    });
}

+ (void)exchangeOriginalMethod:(Method)originalMethod withNewMethod:(Method)newMethod{
    method_exchangeImplementations(originalMethod, newMethod);
}

@end



