//
//  SampleJudgementViewController.swift
//  learnSwift
//
//  Created by Jon on 2018/7/30.
//  Copyright © 2018年 xiangxiong. All rights reserved.
//

import UIKit

class SampleJudgementViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "控制流"
        // Do any additional setup after loading the view.
        let individualScores: [Double] = [80, 90, 70, 65, 44]
        var excellentCount = 0
        for score in individualScores {
            //不在支持隐式的表达，会报错，例如 if score {...}，不在隐式地与零做计算了。
            if score > 80 {
                excellentCount += 1
            }
        }
        print("has \(excellentCount) excellent people")
        
        var optionalString: String? = "hello"
        print(optionalString == nil)
        //使用 ?? 添加默认内容。
        var optionName: String? = nil ?? "John"
        var greeting = "Hello!"
        if let name = optionName {
            print("Hello, \(name)")
        }
        
        //switch不在限制与整型和测试相等上，支持任意类型的数据和各种类型的比较操作
        let vegetable = "white vegetable"
        switch vegetable {
        case "white":
            print("vegetable is white")
        case let vegetable where vegetable.hasPrefix("vegetable"):
            print("vegetable color is white")
        case "red", "gray":
            print("vegetable is red or gray")
        case let x where x.hasPrefix("white"):
            print("vegetable color is white")
        default:
            print(vegetable)
        }
        
        let interestingNumbers = ["Prime": [7, 2, 3, 11, 5],
                                  "Square": [1, 4, 9, 16, 25]]
        var largest = 0
        var keyString = ""
        for (key, value) in interestingNumbers {
            for number in value {
                if number >  largest {
                    largest = number
                    keyString = key
                }
            }
        }
        print(String(largest) + keyString)
        
        //..< 创建一个不包含最大值的区间(大于等于最小值，并且小于最大值)，使用 ... 来创建一个包含最大值和最小值的区间（大于等于最小值，并且小于等于最大值）
        var total = 0
        for i in 0..<4 {
            total = i
        }
        print(total)
        
        var number = 0
        for i in 0...10 {
            number = i
        }
        print(number)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
