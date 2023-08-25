//
//  ChatTokenBuilder.h
//  CommonModule
//
//  Created by Carlson Yuan on 2023/8/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChatTokenBuilder : NSObject

+ (NSString *)BuildUserTokenWithUserID:(NSString *)userID;
+ (NSString *)BuildAppToken;

@end

NS_ASSUME_NONNULL_END
