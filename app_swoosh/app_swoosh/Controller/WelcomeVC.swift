//
//  ViewController.swift
//  app_swoosh
//
//  Created by 黃耀昌 on 2021/7/7.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var bg: UIImageView!
    
    // view is a member of UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        swooshTitle.frame = CGRect(
//            x: view.frame.size.width / 2 - swooshTitle.frame.size.width / 2,
//            y: 50,
//            width: swooshTitle.frame.size.width,
//            height: swooshTitle.frame.size.height
//        )
//
//        bg.frame = view.frame
    }
    
    @IBAction func unwindFromSecondVC(unwindSegue: UIStoryboardSegue) {
        print("hello? main vc")
    }


}

