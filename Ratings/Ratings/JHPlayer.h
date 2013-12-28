//
//  JHPlayer.h
//  Ratings
//
//  Created by lijiahan on 13-12-27.
//  Copyright (c) 2013年 codingcoder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JHPlayer : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) NSInteger rating;

- (id)initWithName:(NSString *)name game:(NSString *)game rating:(NSInteger)rating;

@end
