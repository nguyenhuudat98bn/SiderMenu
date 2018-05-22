//
//  ViewController.swift
//  sliderMEnu
//
//  Created by nguyễn hữu đạt on 5/22/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkMenu: UIView!
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var button: UIButton!
    var isOpenSiderMenu :Bool = false {
        didSet {
            leading.constant = isOpenSiderMenu ? 0 : -UIScreen.main.bounds.width * 2/3
            button.isHidden = !isOpenSiderMenu
            UIView.animate(withDuration: 0.35){
                self.view.layoutIfNeeded()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        leading.constant = -UIScreen.main.bounds.width * 2/3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func menu(_ sender: UIBarButtonItem) {
        isOpenSiderMenu = !isOpenSiderMenu
        
    }
    
    @IBAction func buttonred(_ sender: UIButton) {
        isOpenSiderMenu = !isOpenSiderMenu
    }
    
}

