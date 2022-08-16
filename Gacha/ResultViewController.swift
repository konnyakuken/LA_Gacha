//
//  ResultViewController.swift
//  Gacha
//
//  Created by 若宮拓也 on 2022/08/17.
//

import UIKit

class ResultViewController: UIViewController {

    var number:Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 4 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        //前の画面に戻る
        self.dismiss(animated: true,completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
