//
//  JHPlayerDetailViewController.h
//  Ratings
//
//  Created by lijiahan on 13-12-28.
//  Copyright (c) 2013年 codingcoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JHPlayerDetailViewController;
@protocol JHPlayerDetailViewControllerDelegate <NSObject>
- (void)didCancel:(JHPlayerDetailViewController *)playerDetailController;
- (void)didDone:(JHPlayerDetailViewController *)playerDetailController;

@end

@interface JHPlayerDetailViewController : UITableViewController
@property (nonatomic, weak) id<JHPlayerDetailViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
- (IBAction)returned:(id)sender;
@end
