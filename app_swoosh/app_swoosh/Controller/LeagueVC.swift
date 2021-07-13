//
//  SecondVC.swift
//  app_swoosh
//
//  Created by 黃耀昌 on 2021/7/10.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        // Do any additional setup after loading the view.
        
        player = Player()
    }
    
    /*
        IB stand for "interface builder"
     */
    
    @IBAction func backBtnWasClicked(_ sender: Any) {
//        performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "comens")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    /*
        prepare for segue is always called before viewDidLoad(on the destination view controller)
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
            
        }
    }
}
