//
//  AddViewController.m
//  Every.do CoreData
//
//  Created by Jaison Bhatti on 2017-09-27.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "AddViewController.h"
#import "AppDelegate.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *title1;
@property (weak, nonatomic) IBOutlet UITextField *toDoDescription;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)saveTapped:(UIBarButtonItem *)sender {
    NSString *title = self.title1.text;
    NSString *toDoDescription = self.toDoDescription.text;
    ToDoObject *toDoObject = [[ToDoObject alloc] initWithContext:self.context];
    toDoObject.title = title;
    toDoObject.toDoDescription = toDoDescription;
    [self.delegate saveContext];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
