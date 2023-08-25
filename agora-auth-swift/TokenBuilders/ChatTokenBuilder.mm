//
//  ChatTokenBuilder.m
//  CommonModule
//
//  Created by Carlson Yuan on 2023/8/24.
//

#import "ChatTokenBuilder.h"
#import "src/ChatTokenBuilder2.h"
#include <iostream>

using namespace agora::tools;

std::string app_id = "dc3dc7ea06d8485c9c26e7bad0487b34";
std::string app_certificate = "9a65adc68783409daff7f380927fa273";
uint32_t expiration_in_seconds = 600;


@implementation ChatTokenBuilder

+ (NSString *)BuildUserTokenWithUserID:(NSString *)userID {
    std::string user_id = std::string([userID UTF8String]);
    auto user_token = ChatTokenBuilder2::BuildUserToken(app_id, app_certificate, user_id,
                                               expiration_in_seconds);
    std::cout << "Chat User Token:" << user_token << std::endl;
    return [NSString stringWithCString:user_token.c_str() encoding:NSUTF8StringEncoding];
}

+ (NSString *)BuildAppToken {
    auto app_token = ChatTokenBuilder2::BuildAppToken(app_id, app_certificate,
                                               expiration_in_seconds);
    std::cout << "Chat App Token:" << app_token << std::endl;
    return [NSString stringWithCString:app_token.c_str() encoding:NSUTF8StringEncoding];
}

@end
