//
//  NSMutableDictionary+LBSafe.h
//  LBSafeCollection
//
//  Created by lanbo_zhang on 2018/12/28.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (LBSafe)

- (void)lbsafe_setObject:(id)anObject forKey:(id)aKey;

- (void)lbsafe_removeObjectForKey:(id)aKey;

@end
