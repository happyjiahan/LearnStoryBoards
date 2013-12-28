//
//  JHPlayersViewController.h
//  Ratings
//
//  Created by lijiahan on 13-12-27.
//  Copyright (c) 2013年 codingcoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHPlayerDetailViewController.h"

@interface JHPlayersViewController : UITableViewController
<JHPlayerDetailViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *players;
@end
