//
//  ToDoObject+CoreDataProperties.h
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ToDoObject+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDoObject (CoreDataProperties)

+ (NSFetchRequest<ToDoObject *> *)fetchRequest;

@property (nonatomic) BOOL isCompleted;
@property (nonatomic) int16_t priorityNumber;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *toDoDescription;

@end

NS_ASSUME_NONNULL_END
