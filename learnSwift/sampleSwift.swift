//
//  sampleSwift.swift
//  learnSwift
//
//  Created by xiangxiong on 16/8/30.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

import Foundation



class sampleSwift: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray:NSMutableArray!
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "sample"
        
        self.view.backgroundColor = UIColor.green
        tableview = UITableView(frame: CGRect.init(x: self.view.frame.origin.x, y: self.view.frame.origin.y, width: view.frame.size.width, height: view.frame.size.height))
        tableview.delegate = self;
        tableview.dataSource = self;
        self.view.addSubview(tableview)
        tableview.register(sampleSwiftCell.self, forCellReuseIdentifier: "cell")
        
        //leftbar
//        let leftBarItem = UIBarButtonItem(UIBarButtonItemStyle: UIBarButtonItemStyle.plain, target: self, action: #sele)
//        self.navigationItem.rightBarButtonItem = leftBarItem
        
        dataArray = ["我是第一行","我是第二行","我是第三行","我是第四行","我是第五行"];
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
        cell.textLabel?.text = dataArray[indexPath.row] as? String
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = secondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    
//    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .delete {
//            dataArray.removeObjectAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        }
//    }
    
    
    func actionMethod(){
        tableview.isEditing = !tableview.isEditing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
