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
    
    //メモリストの配列を生成
    var memoArray : [String] = []
    
    var saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        //テーブルビューのデータソースメソッドはViewControllerクラスに書くよ、という設定
        table.dataSource = self
        
        
        var memoArray = self.memoArray.append(saveData.object(forKey: "Memo") as! String) as! String
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       //return memoArray.count
        return memoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text  = memoArray as? String
        return cell!
        
    }
    

}

