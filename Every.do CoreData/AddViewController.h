//
//  AddViewController.h
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppDelegate;
#import "ToDoObject+CoreDataClass.h"

@interface AddViewController : UIViewController

@property (nonatomic,weak) AppDelegate *delegate;
@property (nonatomic) NSManagedObjectContext *context;

@end
