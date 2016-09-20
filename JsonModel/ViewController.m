//
//  ViewController.m
//  JsonModel
//
//  Created by Yanni on 16/9/20.
//  Copyright © 2016年 Yanni. All rights reserved.
//

#import "ViewController.h"
#import "YYModel.h"
#import "AModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSError*error;
    //获取文件路径
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Json"ofType:@"json"];
    
    //根据文件路径读取数据
    NSData *jdata = [[NSData alloc]initWithContentsOfFile:filePath];
    
    //格式化成json数据
    id jsonObject = [NSJSONSerialization JSONObjectWithData:jdata options:kNilOptions error:&error];
   
       AModel *model = [AModel yy_modelWithJSON:jsonObject];
//   NSString * str =  [[model.data.content objectAtIndex:1].style objectAtIndex:0].height;
    Content * dic = model.data.content[1];
    NSLog(@"%@",[dic valueForKey:@"style"]);
//    NSLog(@"%@",str);
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end



