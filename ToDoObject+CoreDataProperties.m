//
//  ToDoObject+CoreDataProperties.m
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ToDoObject+CoreDataProperties.h"

@implementation ToDoObject (CoreDataProperties)

+ (NSFetchRequest<ToDoObject *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ToDoObject"];
}

@dynamic isCompleted;
@dynamic priorityNumber;
@dynamic title;
@dynamic toDoDescription;

@end
