//
//  sampleSwift.swift
//  learnSwift
//
//  Created by xiangxiong on 16/8/30.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

import Foundation



class sampleSwift: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray = NSMutableArray() as! [String]
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Swift"
        
        self.view.backgroundColor = UIColor.green
        tableview = UITableView(frame: CGRect.init(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: view.frame.size.width, height: view.frame.size.height))
        tableview.delegate = self;
        tableview.dataSource = self;
        self.view.addSubview(tableview)
        tableview.register(sampleSwiftCell.self, forCellReuseIdentifier: "cell")
        
        dataArray = ["基本赋值","控制流","函数和必包","对象和类","枚举和结构体"];

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier:String = "cell"
        
        let cell = (tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)) as UITableViewCell
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc: UIViewController = secondViewController()
        switch indexPath.row {
        case 0:
            vc = SampleAssignmentViewController()
        case 1:
            vc = SampleJudgementViewController ()
        case 2:
            vc = SampleFunctionViewController()
        case 3:
            vc = SampleClassViewController()
        case 4:
            vc = SampleEnumViewController()
        default:
            break
        }
        vc.title = dataArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    
    func actionMethod(){
        tableview.isEditing = !tableview.isEditing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
