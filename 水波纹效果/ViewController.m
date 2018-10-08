//
//  ViewController.m
//  水波纹效果
//
//  Created by 刘晓龙 on 2018/10/8.
//  Copyright © 2018年 wajiu. All rights reserved.
//

#import "ViewController.h"
#import "waterRippleController.h"//水波纹控制器
#define wj_width [UIScreen mainScreen].bounds.size.width
#define wj_height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

/**tableview*/
@property (nonatomic,strong) UITableView* tableView;
/**数据源*/
@property (nonatomic,strong) NSArray* dataArr;
@end

@implementation ViewController

-(UITableView *)tableView{
    if (_tableView==nil) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, wj_width, wj_height-64)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellId = @"cellId";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        waterRippleController* water = [[waterRippleController alloc]init];
        [self.navigationController pushViewController:water animated:YES];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArr = @[@"水波纹效果"];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.view addSubview:self.tableView];
}


@end
