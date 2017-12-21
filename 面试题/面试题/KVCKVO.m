//
//  KVCKVO.m
//  面试题
//
//  Created by 杭州米发 on 2017/12/21.
//  Copyright © 2017年 冯硕. All rights reserved.
//

#import "KVCKVO.h"
//键值编码（KVC） 键值监听（KVO）
//kvc 是kvo的基础
@implementation KVCKVO
/*
 KVC (key value coding)  操作方法是由NSKeyValueCoding 协议提供的 NSObject已经实现了这个协议 所以objc中几乎所有的对象都支持KVC操作
 1.动态设置 setValue:属性值 forKey:属性名（用于简单的路径） setValue:属性值 forKeyPath:属性路径（用于复合路径 例如Person有一个account属性 那么person.account就是一个复合属性）
 2.动态读取 valueForKey:属性名 valueForKeyPath:属性名（用于复合路径）
 */

/*  KVO：只要被观察者keypath发生了改变 也就是通过setter getters 才会触发KVO
 优点：一对多
 1.提供一个简单地方法来实现两个对象的同步
 2.能对非我们创建的对象做出反应
 3.能够提供观察的属性的最新值和先前值
 4.用keypaths 来观察属性，因此也可以观察嵌套对象
 缺点：
 1.观察的属性必须使用string来定义，因此编译器不会出现警告和检查
 2.对属性的重构将导致观察不可用
 3.复杂的“if”语句要求对象正在观察多个值，这是因为所有的观察都通过一个方法来指向
 
 KVO :key value observing 观察者模式  观察者只需要注册观察的方法 然后观察方法的回调 被观察者不需要做任何操作 他们之间是完全解耦的  但是kvo 只能检测类中的属性 并且属性名通过字符串来查找编译器不会帮你检测正确与否
 
 
 利用它可以很容易实现视图组件和数据模型的分离，当数据模型的属性值改变之后作为监听器 的视图组件就会被激发，激发时就会回调监听器自身。在ObjC中要实现KVO则必须实现NSKeyValueObServing协议，不过幸运的是 NSObject已经实现了该协议，因此几乎所有的ObjC对象都可以使用KVO。
 
 在ObjC中使用KVO操作常用的方法如下：
 
 - 注册指定Key路径的监听器： addObserver: forKeyPath: options:  context:
 
 - 删除指定Key路径的监听器： removeObserver: forKeyPath、removeObserver: forKeyPath: context:
 
 - 回调监听： observeValueForKeyPath: ofObject: change: context:
 
 
 KVO的使用步骤也比较简单：
 
 - 通过addObserver: forKeyPath: options: context:为被监听对象（它通常是数据模型）注册监听器
 
 - 重写监听器的observeValueForKeyPath: ofObject: change: context:方法
 
 */


/*  一对多
 通知中心：通知的发出是由通知中心来统一发出,而不同通知通过唯一标示名notifcationName来区分,标示名由发送通知的类来起.首先被观察者自己在必要的方法A里,通过方法postNotificationName:object:发出通知notificationName这样发送通知着这边的工作就完成了,每次A被调用,就会发送一次通知notificationName
 然后谁要监听A的变化,就通过[NSNotificationCenter defaultCenter] 的方法addobserver:sslector:name:object为观察者注册监听name为notificationNmae的通知.
 每次发出name为notificationNmae的通知时,注册监听后的观察着就会调用其自己定义的方法notificationselector来进行相应
 NSNotification的特点,就是需要被观察者先主动发出通知,然后观察者注册监听后,再来进行响应,比KVO多了发送通知的一步,但是其优点是监听不局限属性的变化,还可以对多种多样的状态变化进行监听,监听范围广,使用灵活.
 */

- (void)showMessage
{
    NSLog(@"name =%@, age= %d", _name, _age);
}

- (void)setAccount:(KVCAccount *)account
{
    _account = account;
    [self.account addObserver:self forKeyPath:@"banace" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if([keyPath isEqualToString:@"banace"]){
    NSLog(@"keyPath=%@,object=%@,newValue=%.2f,context=%@",keyPath,object,[[change objectForKey:@"new"] floatValue],context);
    }
}


@end
