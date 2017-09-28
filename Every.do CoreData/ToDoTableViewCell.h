//
//  ToDoTableViewCell.h
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *toDoDescription;
@property (weak, nonatomic) IBOutlet UILabel *toDoTitle;

@end
