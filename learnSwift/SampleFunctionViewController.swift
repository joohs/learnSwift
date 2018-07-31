//
//  SampleFunctionViewController.swift
//  learnSwift
//
//  Created by Jon on 2018/7/30.
//  Copyright © 2018年 xiangxiong. All rights reserved.
//

import UIKit

class SampleFunctionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //函数其实就是闭包的一种特殊形式，一段可以被随后调用的代码块。
        greet()
        namePrint(name: "John")
        namePrintUpdate("John")
        namePrintUpdateAge("John", age: "18")
        namePrintFinal("John", myage: "19")
        
        let scores = calculateScore(scores: [10, 12, 13, 256, 35])
        print("min is \(scores.min), max is \(scores.max) sum is \(scores.sum)")
        
        sumNumber()
        sumNumber(numbers: 1, 2, 3, 4, 666, 0003)
        
        print(returnFifteen())
        
        var increment = makeIncrementer()
        print(increment(6))
        
        var numbers = [20, 19, 7, 12]
        hasAnyMatches(list: numbers, condition: lessThanTen)
        
        //可以使用花括号括起一个没有名字的闭包。在闭包内用 in 来分割实际参数和返回类型
        let array = numbers.map({(number: Int) -> Int in
            let result = number * 3
            return result
        })
        print(array)
        
        //当一个闭包的类型已经可知，比如说某个委托的回调，你可以去掉他的参数类型，他的返回类型，或者都去掉
        let mapNumbers = numbers.map({number in 3 * number})
        print(mapNumbers)
        
        //你可以调用参数通过数字而非名字，这个特性在非常简短的闭包当中尤其有用
        //当一个闭包作为函数最后一个参数出入时，可以直接跟在圆括号后边。如果闭包是函数的唯一函数，你可以去掉圆括号直接写闭包
        let sortedNumber = numbers.sorted{$0 > $1}
        print(sortedNumber)
    }

    func greet() -> Void {
        print("my name is John")
    }
    
    func namePrint(name: String) -> Void {
        print("my name is \(name)")
    }
    
    func namePrintUpdate(_ name: String) -> Void {
        print("my name is \(name)")
    }
    //默认情况下， 函数使用他们的形式参数名作为实际参数标签。
    //在形式参数钱可以写自定义的实际参数标签，也可以使用 _ 来避免使用时间参数标签
    func namePrintUpdateAge(_ name: String, age: String) -> Void {
        print("my name is \(name), age is \(age)")
    }
    
    func namePrintFinal(_ name: String,  myage age:String) -> Void {
        print("my name is \(name), age is \(age)")
    }
    
    
    //返回值可以是多个
    func calculateScore(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0;
        for score in scores {
            sum += score
            if score < min {
                min = score
            }
            if score > max {
                max = score
            }
        }
        return (min, max, sum)
    }
    
    //函数同样可以接受多个参数
    func sumNumber(numbers: Int...) -> Void {
        var sum = 0
        for number in numbers {
            sum += number
        }
        print("sum is \(sum)")
    }
    
    //函数可以进行内嵌，避免函数太长或者太过复杂
    func returnFifteen() -> Int {
        var y = 5
        func add() {
            y += 5
        }
        add()
        add()
        return y
    }
    
    //函数是一等类型， 这意味着函数可以把函数作为值来返回
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    
    //函数也可以把另外一个函数作为其自身的参数
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
        return number < 10
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
