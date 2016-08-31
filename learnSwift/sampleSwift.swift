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
        
        self.view.backgroundColor = UIColor.greenColor()
        tableview = UITableView(frame: CGRectMake(0, 0, 320, 640))
        tableview.delegate = self;
        tableview.dataSource = self;
        self.view.addSubview(tableview)
        tableview.registerClass(sampleSwiftCell.self, forCellReuseIdentifier: "cell")
        
        //leftbar
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
        let addButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add ,target: self ,action: #selector(sampleSwift.actionMethod))
        self.navigationItem.rightBarButtonItem = addButton
        
        dataArray = ["我是第一行","我是第二行","我是第三行","我是第四行","我是第五行"];
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier:String = "cell"
        var cell:sampleSwiftCell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! sampleSwiftCell
        if cell.isEqual(nil) {
            cell = sampleSwiftCell(style: .Default,reuseIdentifier: identifier)
        }
        cell.titleLabel?.text = dataArray.objectAtIndex(indexPath.row) as? String
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vc = secondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        return true
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .Delete
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            dataArray.removeObjectAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    
    func actionMethod(){
        tableview.editing = !tableview.editing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}