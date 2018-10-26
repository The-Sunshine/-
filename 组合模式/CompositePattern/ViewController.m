//
//  ViewController.m
//  CompositePattern
//
//  Created by wupeng on 2017/3/6.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "FileCell.h"
#import "File.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) File        *root;

@end

@implementation ViewController

/*
1. 何为组合模式？
 组合模式（Composite Pattern），又叫部分整体模式，是用于把一组相似的对象当作一个单一的对象。组合模式依据树形结构来组合对象，用来表示部分以及整体层次。这种类型的设计模式属于结构型模式，它创建了对象组的树形结构。
 这种模式创建了一个包含自己对象组的类。该类提供了修改相同对象组的方式。
2. 主要解决的问题？
 它在我们树型结构的问题中，模糊了简单元素和复杂元素的概念，客户程序可以向处理简单元素一样来处理复杂元素，从而使得客户程序与复杂元素的内部结构解耦。
3. 如何使用适配器模式？
 树枝和叶子实现统一接口，树枝内部组合该接口。
4. 关键代码?
 树枝内部组合该接口，并且含有内部属性 List，里面放 Component。
5. 适配器模式的优缺点？
 优点： 高层模块调用简单、节点自由增加。
 缺点：在使用组合模式时，其叶子和树枝的声明都是实现类，而不是接口，违反了依赖倒置原则。
6. 使用场景？
 部分、整体场景，如树形菜单，文件、文件夹的管理。
 （注：定义时为具体类。）
 
 */
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"Root";
    
    // 创建根节点
    self.root = [File fileWithFileType:kFolder fileName:@"root"];
    
    // 创建第一级文件
    File *folder_A_1 = [File fileWithFileType:kFolder fileName:@"Folder-A-1"];
    File *file_A_2   = [File fileWithFileType:kFile fileName:@"File-A-2"];
    File *file_A_3   = [File fileWithFileType:kFile fileName:@"File-A-3"];
    File *file_A_4   = [File fileWithFileType:kFile fileName:@"File-A-4"];
    
    // 创建第二级文件
    File *folder_B_1 = [File fileWithFileType:kFolder fileName:@"Folder-B-1"];
    File *file_B_2   = [File fileWithFileType:kFile fileName:@"File-B-2"];
    File *file_B_3   = [File fileWithFileType:kFile fileName:@"File-B-3"];
    File *folder_B_2 = [File fileWithFileType:kFolder fileName:@"Folder-B-2"];
    
    // 创建第三级文件
    File *folder_C_1 = [File fileWithFileType:kFolder fileName:@"Folder-C-1"];
    File *file_C_1   = [File fileWithFileType:kFile fileName:@"File-C-1"];
    File *file_C_2   = [File fileWithFileType:kFile fileName:@"File-C-2"];
    
    [self.root addFile:folder_A_1];
    [self.root addFile:file_A_2];
    [self.root addFile:file_A_3];
    [self.root addFile:file_A_4];
    
    [folder_A_1 addFile:folder_B_1];
    [folder_A_1 addFile:file_B_2];
    [folder_A_1 addFile:file_B_3];
    [folder_A_1 addFile:folder_B_2];
    
    [folder_B_1 addFile:folder_C_1];
    [folder_B_1 addFile:file_C_1];
    [folder_B_2 addFile:file_C_2];
    
    [self initTableView];
}

#pragma mark - tableView相关
- (void)initTableView {
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableView.delegate       = self;
    self.tableView.dataSource     = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.tableView registerClass:[FileCell class] forCellReuseIdentifier:@"fileCell"];
    
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.root.childFiles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FileCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"fileCell"];
    cell.indexPath  = indexPath;
    cell.tableView  = tableView;
    cell.controller = self;
    
    // 传入节点File
    cell.data       = self.root.childFiles[indexPath.row];
    
    [cell loadContent];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80.f;
}

@end
