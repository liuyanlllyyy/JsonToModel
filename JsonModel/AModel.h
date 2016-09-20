//
//  AModel.h
//  JsonModel
//
//  Created by Yanni on 16/9/20.
//  Copyright © 2016年 Yanni. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Data,Sharedata,Content,Styles;
@interface AModel : NSObject
@property NSString * status;
@property NSString *message;
@property (nonatomic, strong) Data *data;

@end

@interface DataModel : NSObject
@property NSString * newsId;
@property NSString * title;


@end
@interface Data : NSObject

@property (nonatomic, assign) NSInteger newsId;

@property (nonatomic, assign) NSInteger newstype;

@property (nonatomic, copy) NSString *publishTime;

@property (nonatomic, copy) NSString *src;

@property (nonatomic, strong) NSArray<Content *> *content;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *lastModify;

@property (nonatomic, strong) Sharedata *shareData;

@property (nonatomic, strong) NSArray *carserialData;

@property (nonatomic, assign) NSInteger subsnewsid;

@end

@interface Sharedata : NSObject

@property (nonatomic, copy) NSString *newsLink;

@property (nonatomic, strong) NSArray *forums;

@property (nonatomic, copy) NSString *src;

@property (nonatomic, assign) NSInteger newsId;

@property (nonatomic, copy) NSString *newsImg;

@property (nonatomic, copy) NSString *newsTitle;

@end

@interface Content : NSObject

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, copy) NSString *content;
@property (nonatomic,strong)NSArray <Styles*> *style;
@end



@interface Styles : NSObject

@property (nonatomic,copy) NSString * height;
@property (nonatomic,copy) NSString * width;


@end
