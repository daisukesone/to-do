//
//  MemoViewController.swift
//  to do
//
//  Created by 曽根大輔 on 2018/02/21.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textView: UITextView!
    
    var saveData: UserDefaults = UserDefaults.standard
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func  saveMemo() {
        
        //userDefaultに書き込み
        saveData.set(textView.text, forKey: "Memo") as? String
        
        
    
    }
    
    //アラートを出す
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
