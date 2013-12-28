//
//  JHPlayer.m
//  Ratings
//
//  Created by lijiahan on 13-12-27.
//  Copyright (c) 2013年 codingcoder. All rights reserved.
//

#import "JHPlayer.h"

@implementation JHPlayer

- (id)initWithName:(NSString *)name game:(NSString *)game rating:(NSInteger)rating
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _game = [game copy];
        _rating = rating;
    }
    return self;
}


@end
