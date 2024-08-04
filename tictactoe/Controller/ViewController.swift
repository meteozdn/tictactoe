//
//  ViewController.swift
//  tictactoe
//
//  Created by Metehan Özden on 4.08.2024.
//

import UIKit

class ViewController: UIViewController {

    
    

    var playOrder = 0
    var letter = "X"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func buttonCellOnTap(_ sender: UIButton) {
        sender.isEnabled = false
        sender.setTitle(letter, for: .normal)
        sender.titleLabel?.font = UIFont.systemFont(ofSize: 90)
        sender.setTitleColor(.red, for: .normal)
        play()
    }
    
    func play() {
        
        if playOrder == 0{
            letter = "O"
            playOrder = 1
        }else {
            letter = "X"
            playOrder = 0
        }
    }
    

}

