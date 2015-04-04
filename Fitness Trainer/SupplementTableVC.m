//
//  SupplementTableVC.m
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 04.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "SupplementTableVC.h"
#import "SupplementData.h"
#import "SupplementCell.h"
#import "SupplementDetailsVC.h"

@interface SupplementTableVC ()

@end

@implementation SupplementTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Добавки";
    self.supplements = [SupplementData fetchData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.supplements count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SupplementCell *cell = [tableView dequeueReusableCellWithIdentifier:@"supplementCell" forIndexPath:indexPath];
    
    SupplementData *cellSupplement = [self.supplements objectAtIndex:indexPath.row];
    
    cell.cellSupplement = cellSupplement;
    cell.textLabel.text = cell.cellSupplement.title;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showSupplementDetails"] && [segue.destinationViewController isKindOfClass:[SupplementDetailsVC class]])
    {
        SupplementCell *senderCell = (SupplementCell *)sender;
        SupplementDetailsVC *targetVC = segue.destinationViewController;
        targetVC.currentSupplement = senderCell.cellSupplement;
    }
}


@end
