//
//  ViewController.swift
//  3MokuNarabe
//
//  Created by 山中力仁 on 2017/09/20.
//  Copyright © 2017年 yamayoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    var cnt:Int = 1
    var sign:String = "○"
    
    @IBAction func evButton1(_ sender: UIButton) {
        //ここをメソッド化したいね
        if cnt % 2 == 0 {
            sign = "×"
        }else{
            sign = "○"
        }
        Button1.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton2(_ sender: UIButton) {
        Button2.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton3(_ sender: UIButton) {
        Button3.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton4(_ sender: UIButton) {
        Button4.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton5(_ sender: UIButton) {
        Button5.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton6(_ sender: UIButton) {
        Button6.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton7(_ sender: UIButton) {
        Button7.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton8(_ sender: UIButton) {
        Button8.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    @IBAction func evButton9(_ sender: UIButton) {
        Button9.setTitle(sign , for: .normal)
        cnt = cnt + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

