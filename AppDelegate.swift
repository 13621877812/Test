//
//  AppDelegate.swift
//  MySwift
//
//  Created by sun on 2017/6/28.
//  Copyright © 2017年 孙建伟. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
共和xxxxx国姑获鸟 
几级了就
    后悔何及
    鞍山市
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let viewC = UIController()
        viewC.type=Chat_type.img
        
        
        
        
        let navC = UINavigationController(rootViewController: viewC)
        self.window?.rootViewController=navC
        
        
    self.initWithPush()
        
     
     //引用计数的探讨
        
        
   var teacher:TeacherCount? = TeacherCount(name: "灭绝师太")
        
     
        teacher?.print1()
        
        //局部变量  方法执行完毕后  释放
        
     
        
        
        
        
        
        var p:Person1? = Person1(name:"jj")
        
        
        
        //weak  弱引用
        
        var strongP = Person2(name: "KKK") //1
        var strongP2 = strongP //2
        
        //弱引用  引用计数不变
        //如果利用weak修饰变量，当对象释放后会自动将变量设置为nil
        //所以利用weak修饰的变量必定是一个可选类型，因为只有可选类型才能设置为nil
        
        
        
        //随时被释放
        weak var weakP:Person2?=Person2(name:"ko")
        
        if let p110=weakP {
            print(p110)
        }else
        {
             print(weakP)
        }
        
       /*
         unowned 无主引用，相当于oc  unsafe_unretained
         unowned 和weak 的区别
         1.利用unowned的修饰的变量，对象释放后不会设置为nil，不安全
         利用weak修饰的变量，对象释放后会设置为nil
         
         2.利用unowned修饰的变量，不是可选类型
             利用weak修饰的变量是可选类型
         
         
         ARC 不是万能的，它可以很好的解决内存问题，但是某些场合不能
         很好的解决内存泄漏问题  例如两个对象或多个对象之间的循环引用问题
         
        */
        
      
        
        
      /*
        类簇
       使用一个统一的接口定制单一的对象
         
    */
        
        let coke = Drinking.drink(name: "Coke") as! Coke
        print(coke.name)
        
        
        
        
        
        //get  set 方法
        //在Swift中  如果想使用某一个类 是不用import导入
        //因为Swift新增命名空间  
        //只要是在同一个命名空间中的资源都是共享的
        //默认情况下   项目名称就是命名空间
        // 命名空间  类名          地址
        //最好使用coopods引入第三方  这样可以创建不同的命名空间机制   防止文件出现冲突
        
        //<MySwift.UIController: 0x7fddade089f0>
//        let p:Person = Person()
//        p.name="小单"
//        p.carId="136218778"
//        print(p.age ?? "100")
//        print(p.carId ?? "100")
//        
//        print("\(p.age) \(p.tel)")
        
        
//         let p1:Person = Person(name: 1, age: 2)
        
        //通过kvc判断
        let p1:Person = Person(dict: ["tel":123 as AnyObject,"tel1":1266666 as AnyObject])
        
        
        //局部 变量一般用let
        
        
        let single1:SingleObject = SingleObject.shareInstance
        
        single1.name="name1"
        
         let single2:SingleObject = SingleObject.shareInstance
       single2.name="name2"
        
        print("\(single1.name ?? "111")")
        
        
        
        
       //API 的检测
        
        //写法一
        if #available(iOS 10, *) {
            print("支持10")
        }else
        {
            print("bu支持10")
        }
        
        //写法2
        if #available(iOS 10,macOS 10.12, *) {
            
        }
        
        
        
        
        
        return true
    }

   
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

