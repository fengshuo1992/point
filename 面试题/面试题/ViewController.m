//
//  ViewController.m
//  面试题
//
//  Created by 杭州米发 on 2017/12/21.
//  Copyright © 2017年 冯硕. All rights reserved.
//

#import "ViewController.h"
#import "KVCAccount.h"
#import "KVCKVO.h"
/*
 1、25岁时，没人跟我说，知识或者技能这种东西，学到了就跟你一辈子，不管工作或时空跨度多大，新知和技能都能排上用场
 
 2、25岁时，有人跟我说，习惯很重要，但没人跟我说重要到深度影响自己生活、人生选择和生命质量的程度。因为几乎大多数人，每时每刻都生活在形形色色的思维习惯、生活习惯中，比如健身、跑步、阅读、表达、写作、沟通、学习等等，所有影响我们生活工作结果的全是这些习惯。我们养成习惯，然后习惯养成我们。
 
 3、25岁时，没人跟我说，围剿式学习，就是吸星大法，通过观察对方的沟通、演讲、写作方式，从而学习他们的思维方式、学习他们身上最优秀的思维习惯。
 
 4、25岁时，没人跟我说，真诚和诚信有多么重要，真诚是领导力的真谛，诚信是商业的真谛，每个人的年薪、领导能力、商业成就全部都可以从这两个词汇里诠释。
 
 5、25岁时，没人跟我说，父母正在逼近死亡。年轻人可能心里想得更多的是幸福生活，但父母的年纪，他们年龄越大，越要去面临离开这一主题，他们担心被世界抛弃，担心自己在儿女生活中扮演不了什么重要价值，特别渴望回馈、关注和尊重，不管多忙，能多打一个电话就多打一个电话，能多在一起吃顿饭，就多在一起吃顿饭，能满足他们想要的，不管大小，尽量去满足。
 
 6、25岁时，没人跟我说，睡眠其实真正决定了生命的效率。因为睡眠决定着第二天的心情、状态、专注度等，而心情、状态、专注度直接影响结果，我们的现在就是由大大小小的这些结果构成的。所以睡个好觉可能是让生活变得更好的最大的捷径。
 
 7、25岁时，没人跟我说，保持自我，并不断变得更好，其实在一段感情里，远比委曲求全，一味地宠溺对方，更重要。保持自我可以测试出和对方是否合拍，不断变得更好，可以让感情更深刻而持久。千万不要因为孤独、无助、父母逼迫、个人面子、焦虑等原因仓促地选择一个人。这个人是自己生命的一部分，对自己施加着无以复加地影响，所以谨慎点，即便单身都比错误好很多。
 
 8、25岁时，没人跟我说，利用所有的感官去体验周遭的世界是那么重要，刻意发现生活的美，发现细微处的不同，会给自己带来很多小惊喜！
 */
@interface ViewController ()

@end

@implementation ViewController

/*
 1.介绍下内存的几大区域？
 2.你是如何组件化解耦的？
 3.runtime如何通过selector找到对应的IMP地址
 4.runloop内部实现逻辑？
 5.你理解的多线程？
 6.GCD执行原理？
 7.怎么防止别人反编译你的app？
 8.YYAsyncLayer如何异步绘制？
 9.优化你是从哪几方面着手？
 
 
 1.dSYM你是如何分析的？
 2.多线程有哪几种？你更倾向于哪一种？
 3.单例弊端？
 4.如何把异步线程转换成同步任务进行单元测试？
 5.介绍下App启动的完成过程？
 6.比如App启动过慢，你可能想到的因素有哪些？
 7.0x8badf00d表示是什么？
 8.怎么防止反编译？
 9.说说你遇到到的技术难点？
 10.说说你了解的第三方原理或底层知识？
 
 
 1.    怎么判断某个 cell 是否显示在屏幕上
 2.    进程和线程的区别
 3.    TCP 与 UDP 区别
 4.    TCP 流量控制
 5.    数组和链表的区别
 6.    UIView 生命周期
 7.    如果页面 A 跳转到 页面 B，A 的 viewDidDisappear 方法和 B 的 viewDidAppear 方法哪个先调用？
 8.    block 循环引用问题
 9.    ARC 的本质
 10.    RunLoop 的基本概念，它是怎么休眠的？
 11.    Autoreleasepool 什么时候释放，在什么场景下使用？
 12.    如何找到字符串中第一个不重复的字符
 13.    哈希表如何处理冲突
 
 
 1.MVC具有什么样的优势，各个模块之间怎么通信，比如点击 Button 后 怎么通知 Model？
 2.两个无限长度链表（也就是可能有环） 判断有没有交点
 3.UITableView的相关优化
 4.KVO、Notification、delegate各自的优缺点，效率还有使用场景
 5.如何手动通知KVO
 6.Objective-C 中的copy方法
 7.runtime 中，SEL和IMP的区别
 8.autoreleasepool的使用场景和原理
 9.RunLoop的实现原理和数据结构，什么时候会用到
 10.block为什么会有循环引用
 11.有没有自己设计过网络控件？ 12.NSOperation和GCD的区别
 13.CoreData的使用，如何处理多线程问题
 14.如何设计图片缓存？
 15.有没有自己设计过网络控件？
 
 
 1.使用了第三方库, 有看它们是怎么实现的吗？
 2.强连通量算法了解嘛？
 3.遇到tableView卡顿嘛？会造成卡顿的原因大致有哪些？
 4.M、V、C相互通讯规则你知道的有哪些？
 5.NStimer准吗？谈谈你的看法？如果不准该怎样实现一个精确的NSTimer?
 
 
 1.你一般学习iOS是如何学习的？
 2.app内存你是如何分析的？
 3.用过 TableView 吗，平时怎么解决 TableView 滑动卡顿问题的？
 4.网络模型了解么？有哪几种？说说你的看法？
 5.block本质是什么？
 6.KVC机制是如何通过key找到value。
 7.说说你最熟悉的第三方，知晓其原理么？
 
 
 
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
    KVCKVO * kvc = [[KVCKVO alloc] init];
    [kvc setValue:@"fengshuo" forKey:@"name"];
    [kvc setValue:@28 forKey:@"age"];
    [kvc showMessage];
    
       NSLog(@"person1's name is :%@,age is :%@",kvc.name,[kvc valueForKey:@"age"]);
    
    
    KVCAccount * account = [[KVCAccount alloc] init];
    kvc.account = account;
    [kvc setValue:@100000 forKeyPath:@"account.banace"];
    
    account.banace = 152420211;
    
    
    NSLog(@"person1's balance is :%.2f",[[kvc valueForKeyPath:@"account.banace"] floatValue]);
    
}


@end
