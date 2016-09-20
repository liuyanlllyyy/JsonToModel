//
//  AModel.m
//  JsonModel
//
//  Created by Yanni on 16/9/20.
//  Copyright © 2016年 Yanni. All rights reserved.
//

#import "AModel.h"

@implementation AModel

@end
@implementation Data

+ (NSDictionary *)objectClassInArray{
    return @{@"content" : [Content class]};
}

@end


@implementation Sharedata

@end


@implementation Content
+ (NSDictionary *)objectClassInArray{
    return @{@"style" : [Styles class]};
}
@end

@implementation Styles

@end
