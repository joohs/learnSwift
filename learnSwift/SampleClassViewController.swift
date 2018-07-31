//
//  SampleClassViewController.swift
//  learnSwift
//
//  Created by Jon on 2018/7/30.
//  Copyright © 2018年 xiangxiong. All rights reserved.
//

import UIKit

class SampleClassViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var triangleAdnSquare = TriangleAndSquare(size: 10, name: "another test shape")
        print(triangleAdnSquare.square.sideLength)
        print(triangleAdnSquare.triangle.sideLength)
        triangleAdnSquare.square = Square(sideLength: 50, name: "larger square")
        print(triangleAdnSquare.triangle.sideLength)
        print(triangleAdnSquare.square.sideLength)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class Shape {
    var numberOfSizes = 0
    func simpleDescription() -> String {
        return "a shape with \(numberOfSizes) sides."
    }
}

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "a shape with \(numberOfSides) sides"
    }
}

class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "a square with sides of length \(sideLength)."
    }
}

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "an equilateral triangle with sides of length \(sideLength)"
    }
}

//如果你不需要计算属性但仍然需要在设置一个新值的前后执行代码，使用willSet和didSet.
//确保三角形的边长和正方形边长相同
class TriangleAndSquare {
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
