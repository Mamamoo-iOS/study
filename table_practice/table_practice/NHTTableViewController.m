//
//  NHTTableViewController.m
//  table_practice
//
//  Created by Eunjoo Im on 2015. 11. 19..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import "NHTTableViewController.h"

@interface NHTTableViewController ()

@end

@implementation NHTTableViewController

NSMutableArray *rowDataArray;
int insertRow;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"줄 추가/삭제/이동 샘플";
    rowDataArray = [[NSMutableArray alloc]init];
    for (int i = 1; i < 4; i++) {
        [rowDataArray addObject:[NSString stringWithFormat:@"원래 행 : %d", i]];
    }
    insertRow = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // 샘플로 1섹션 선정
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // 1개 섹션 내의 행 수 반환
    return [rowDataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // storyboard에서 지정한 Identifier
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
    
    UILabel* uiLabel;
    
    uiLabel = (UILabel*)[cell viewWithTag:1];
    uiLabel.text = [rowDataArray objectAtIndex:indexPath.row];

    return cell;
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"%@%ld", @"섹션", section];
}

- (void) setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:YES];
    
    if (editing) {
        // 편집 모드이면
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                      target:self
                                      action:@selector(insertRow:)];
        // 추가 버튼을 표시
        [self.navigationItem setLeftBarButtonItem:addButton animated:YES];
    } else {
        // 현재 일반 모드이므로 추가 버튼을 비표시로
        [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    }
}

- (IBAction)insertRow:(id)sender {
    NSIndexPath* indexPath = [NSIndexPath indexPathForRow:rowDataArray.count inSection:0];
    NSArray* indexPaths = [NSArray arrayWithObjects:indexPath, nil];
    [rowDataArray addObject:[NSString stringWithFormat:@"추가된 행: %d", insertRow]];
    // 다음 사용을 위해 insertCount에 1 추가
    insertRow++;
    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationTop];
}

- (void)tableView:(UITableView*) tableView moveRowAtIndexPath:(nonnull NSIndexPath *)fromIndexPath toIndexPath:(nonnull NSIndexPath *)toIndexPath {
    if (fromIndexPath.section == toIndexPath.section) {
        // 이동 장소와 이동할 장소는 같은 섹션
        if (rowDataArray && toIndexPath.row < [rowDataArray count]) {
            // 이동 대상을 저장
            id item = [rowDataArray objectAtIndex:fromIndexPath.row];
            // 배열에서 우선 삭제
            [rowDataArray removeObject:item];
            // 저장해 둔 대상을 삽입
            [rowDataArray insertObject:item atIndex:toIndexPath.row];
        }
    }
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
