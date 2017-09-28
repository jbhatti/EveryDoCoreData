//
//  ViewController.m
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"
#import "ToDoObject+CoreDataClass.h"
#import "AppDelegate.h"
#import "AddViewController.h"
#import "ToDoTableViewCell.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSArray<ToDoObject*>*toDoObject;
@property (nonatomic) NSManagedObjectContext *context;
@property (nonatomic, weak) AppDelegate *delegate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.delegate = ((AppDelegate*)[[UIApplication sharedApplication] delegate]);
    self.context = self.delegate.persistentContainer.viewContext;
    [self fetchData];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(fetchData) name:NSManagedObjectContextDidSaveNotification object:nil];
}

#pragma mark - DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoObject.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ToDoObject *toDoObject = self.toDoObject[indexPath.row];
    cell.toDoTitle.text = toDoObject.title;
    cell.toDoDescription.text = toDoObject.toDoDescription;
    return cell;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddViewController"]) {
        AddViewController *avc = segue.destinationViewController;
        avc.delegate = self.delegate;
        avc.context = self.context;
    }
}

#pragma mark - Core Data

- (void)fetchData {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"ToDoObject"];
    NSSortDescriptor *titleDesc = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:NO];
    request.sortDescriptors = @[titleDesc];
    NSArray <ToDoObject *>*toDoObject = [self.context executeFetchRequest:request error:nil];
    self.toDoObject = toDoObject;
    [self.tableView reloadData];
}

- (void)dealloc {
    [NSNotificationCenter.defaultCenter removeObserver:self];
}


@end
