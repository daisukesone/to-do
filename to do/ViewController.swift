//
//  ViewController.swift
//  to do
//
//  Created by 曽根大輔 on 2018/02/21.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //ストーリーボードで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    var memoArray: [String] = ["メモ1", "メモ2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //テーブルビューのデータソースメソッドはViewControllerクラスに書くよ、という設定
        table.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return memoArray.count
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text  = "テスト"
        return cell!
    }
    

}

