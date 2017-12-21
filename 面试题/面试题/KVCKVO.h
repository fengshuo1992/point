//
//  KVCKVO.h
//  面试题
//
//  Created by 杭州米发 on 2017/12/21.
//  Copyright © 2017年 冯硕. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVCAccount.h"

/*
 KVC使用起来比较简单，但是它如何查找一个属性进行读取呢？具体查找规则（假设现在要利用KVC对a进行读取）：
 
 如果是动态设置属性，则优先考虑调用setA方法，如果没有该方法则优先考虑搜索成员变量_a,如果仍然不存在则搜索成员变量a，如果最后仍然没搜索到则会调用这个类的setValue:forUndefinedKey：方法(注意搜索过程中不管这些方法、成员变量是私有的还是公共的都能正确设置)；
 
 如果是动态读取属性，则优先考虑调用a方法（属性a的getter方法），如果没有搜索到则会优先搜索成员变量_a，如果仍然不存在则搜索成员变量a，如果最后仍然没搜索到则会调用这个类的valueforUndefinedKey:方法(注意搜索过程中不管这些方法、成员变量是私有的还是公共的都能正确读取)；
 */

/*
 
 */

@interface KVCKVO : NSObject{

@private
int _age;
}

@property (nonatomic, assign) NSString * name;
@property (nonatomic, strong) KVCAccount * account;

- (void)showMessage;
@end
