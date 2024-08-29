//
//  Page2ViewController.swift
//  Test123
//
//  Created by AndyHsieh on 2024/8/29.
//

import UIKit

class Page2ViewController: UIViewController {

    var isHide = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        guard let vc = segue.source as? ViewController else { return }
//        vc.isHidden = self.isHide
//    }
    
    
    @IBAction func backBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func hideBtnTapped(_ sender: Any) {
        
        isHide = true
    }
    
    @IBAction func showBtnTapped(_ sender: Any) {
        
        isHide = false
        
    }
    
}
