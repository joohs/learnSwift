//
//  SampleAssignmentViewController.swift
//  learnSwift
//
//  Created by Jon on 2018/7/30.
//  Copyright © 2018年 xiangxiong. All rights reserved.
//

import UIKit

class SampleAssignmentViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "简单赋值"
        var floor = 6
        floor = floor + 1
        
        let unVariable = 6
        //let申明是常量，不可变
//        unVariable = unVariable + 1
        print(unVariable)
        
        //需要后期申明类型
        let unVariableDouble: Double = 6
        print(unVariableDouble)
        
        //值绝对不会隐式地转为其他类型。需要进行显示地声明
        //或者使用  \(variable)
        let lable = "the width is"
        let width: Double = 89
        print(lable + String(width))
        let labelWidthString = "the width is \(width)"
        print(labelWidthString)
        
        //"""  来一次输入多行内容
        let quotation = """
        i have some thing
        to tell you
        """
        print(quotation)
        
        //"[]"来进行替换数组或字典
        var shoppingList = ["coffe", "tea", "cocacola"]
        shoppingList[1] = "cola";
        print(shoppingList)
        
        var occupations = ["jon": "tea", "jim": "cocacola"]
        occupations["jim"] = "cola"
        print(occupations)
        
        var emptyArray = [String]()
        var empthDictionary = [String: Double]()
        emptyArray = []
        empthDictionary = [:]
        print(emptyArray)
        print(empthDictionary)
    }

}
