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
    @IBOutlet weak var msgLbl: UILabel!
    @IBOutlet weak var rstButton: UIButton!
    
    var cnt:Int = 1
    var sign:String = "○"
    var btnFlg:[Int] = [0,0,0,0,0,0,0,0,0]
    var endFlg:[Bool] = [false]
    var colorTitle:UIColor = UIColor.blue
    
    @IBAction func evButton1(_ sender: UIButton) {
        BtnDecided(BtnPos:1 , BtnFlg:btnFlg[0])
        MatchJudge()
    }
    @IBAction func evButton2(_ sender: UIButton) {
        BtnDecided(BtnPos:2 , BtnFlg:btnFlg[1])
        MatchJudge()
    }
    @IBAction func evButton3(_ sender: UIButton) {
        BtnDecided(BtnPos:3 , BtnFlg:btnFlg[2])
        MatchJudge()
    }
    @IBAction func evButton4(_ sender: UIButton) {
        BtnDecided(BtnPos:4 , BtnFlg:btnFlg[3])
        MatchJudge()
    }
    @IBAction func evButton5(_ sender: UIButton) {
        BtnDecided(BtnPos:5 , BtnFlg:btnFlg[4])
        MatchJudge()
    }
    @IBAction func evButton6(_ sender: UIButton) {
        BtnDecided(BtnPos:6 , BtnFlg:btnFlg[5])
        MatchJudge()
    }
    @IBAction func evButton7(_ sender: UIButton) {
        BtnDecided(BtnPos:7 , BtnFlg:btnFlg[6])
        MatchJudge()
    }
    @IBAction func evButton8(_ sender: UIButton) {
        BtnDecided(BtnPos:8 , BtnFlg:btnFlg[7])
        MatchJudge()
    }
    @IBAction func evButton9(_ sender: UIButton) {
        BtnDecided(BtnPos:9 , BtnFlg:btnFlg[8])
        MatchJudge()
    }
    @IBAction func evRstBtn(_ sender: UIButton) {
        cnt = 1
        sign = "○"
        btnFlg = [0,0,0,0,0,0,0,0,0]
        msgLbl.isHidden = true
        rstButton.isHidden = true
        endFlg = [false]
        colorTitle = UIColor.blue
        Button1.setTitle("1" , for: .normal)
        Button1.setTitleColor(colorTitle, for: .normal)
        Button2.setTitle("2" , for: .normal)
        Button2.setTitleColor(colorTitle, for: .normal)
        Button3.setTitle("3" , for: .normal)
        Button3.setTitleColor(colorTitle, for: .normal)
        Button4.setTitle("4" , for: .normal)
        Button4.setTitleColor(colorTitle, for: .normal)
        Button5.setTitle("5" , for: .normal)
        Button5.setTitleColor(colorTitle, for: .normal)
        Button6.setTitle("6" , for: .normal)
        Button6.setTitleColor(colorTitle, for: .normal)
        Button7.setTitle("7" , for: .normal)
        Button7.setTitleColor(colorTitle, for: .normal)
        Button8.setTitle("8" , for: .normal)
        Button8.setTitleColor(colorTitle, for: .normal)
        Button9.setTitle("9" , for: .normal)
        Button9.setTitleColor(colorTitle, for: .normal)
    }
    
    //ボタン決定処理
    func BtnDecided(BtnPos:Int , BtnFlg:Int) -> Void{
        
        if BtnFlg == 0 && endFlg == [false]{
            if cnt % 2 == 0 {
                sign = "×"
                btnFlg[BtnPos - 1] = 2 //押したフラグ
                colorTitle = UIColor.black
            }else{
                sign = "○"
                btnFlg[BtnPos - 1] = 1 //押したフラグ
                colorTitle = UIColor.red
            }
            cnt = cnt + 1 //ターンカウント
        
            switch BtnPos {
            case 1:
                Button1.setTitle(sign , for: .normal)
                Button1.setTitleColor(colorTitle, for: .normal)
            case 2:
                Button2.setTitle(sign , for: .normal)
                Button2.setTitleColor(colorTitle, for: .normal)
            case 3:
                Button3.setTitle(sign , for: .normal)
                Button3.setTitleColor(colorTitle, for: .normal)
            case 4:
                Button4.setTitle(sign , for: .normal)
                Button4.setTitleColor(colorTitle, for: .normal)
            case 5:
                Button5.setTitle(sign , for: .normal)
                Button5.setTitleColor(colorTitle, for: .normal)
            case 6:
                Button6.setTitle(sign , for: .normal)
                Button6.setTitleColor(colorTitle, for: .normal)
            case 7:
                Button7.setTitle(sign , for: .normal)
                Button7.setTitleColor(colorTitle, for: .normal)
            case 8:
                Button8.setTitle(sign , for: .normal)
                Button8.setTitleColor(colorTitle, for: .normal)
            case 9:
                Button9.setTitle(sign , for: .normal)
                Button9.setTitleColor(colorTitle, for: .normal)
            default:
                Button5.setTitle(sign , for: .normal)
            }
            
        }
    }
    
    func MatchJudge() -> Void {
        if (btnFlg[0] == 1 && btnFlg[1] == 1 && btnFlg[2] == 1)||(btnFlg[0] == 2 && btnFlg[1] == 2 && btnFlg[2] == 2){ //上横
            resultPrcs()
        }else if (btnFlg[3] == 1 && btnFlg[4] == 1 && btnFlg[5] == 1)||(btnFlg[3] == 2 && btnFlg[4] == 2 && btnFlg[5] == 2){ //中横
            resultPrcs()
        }else if (btnFlg[6] == 1 && btnFlg[7] == 1 && btnFlg[8] == 1)||(btnFlg[6] == 2 && btnFlg[7] == 2 && btnFlg[8] == 2){ //下横
            resultPrcs()
        }else if (btnFlg[0] == 1 && btnFlg[3] == 1 && btnFlg[6] == 1)||(btnFlg[0] == 2 && btnFlg[3] == 2 && btnFlg[6] == 2){ //左縦
            resultPrcs()
        }else if (btnFlg[1] == 1 && btnFlg[4] == 1 && btnFlg[7] == 1)||(btnFlg[1] == 2 && btnFlg[4] == 2 && btnFlg[7] == 2){ //中縦
            resultPrcs()
        }else if (btnFlg[2] == 1 && btnFlg[5] == 1 && btnFlg[8] == 1)||(btnFlg[2] == 2 && btnFlg[5] == 2 && btnFlg[8] == 2){ //右縦
            resultPrcs()
        }else if (btnFlg[0] == 1 && btnFlg[4] == 1 && btnFlg[8] == 1)||(btnFlg[0] == 2 && btnFlg[4] == 2 && btnFlg[8] == 2){ //左斜
            resultPrcs()
        }else if (btnFlg[2] == 1 && btnFlg[4] == 1 && btnFlg[6] == 1)||(btnFlg[2] == 2 && btnFlg[4] == 2 && btnFlg[6] == 2){ //右斜
            resultPrcs()
        }else if cnt > 9{ //全マスをタップ
            drowProcs()
        }
    }
    
    func resultPrcs(){
        msgLbl.text = sign + "の勝ちです"
        msgLbl.isHidden = false
        rstButton.isHidden = false
        endFlg = [true]
    }
    
    func drowProcs(){
        msgLbl.text = "引き分けです"
        msgLbl.isHidden = false
        rstButton.isHidden = false
        endFlg = [true]
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

