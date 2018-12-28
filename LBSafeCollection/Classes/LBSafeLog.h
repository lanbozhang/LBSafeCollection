//
//  LBSafeLog.h
//  Pods
//
//  Created by vzlb张兰波 on 2018/12/28.
//

#ifndef LBSafeLog_h
#define LBSafeLog_h

#ifdef DEBUG
#define LBSafeLog(format, ...) printf("[%s] %s:%d %s %s\n", [[[NSDate date] description] UTF8String], [[[[NSString alloc] initWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:format, ## __VA_ARGS__] UTF8String]);
#else
#define LBSafeLog(format, ...)
#endif

#endif /* LBSafeLog_h */
