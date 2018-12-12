//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Taran Thamrait on 12/12/18.
//  Copyright © 2018 Tarandeep. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultTipController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func defaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipController.selectedSegmentIndex, forKey: "TipIndex")

        defaults.synchronize()
        
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
