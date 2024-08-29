//
//  ViewController.swift
//  Test123
//
//  Created by AndyHsieh on 2024/8/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigImage: UIImageView!
    
    var isHidden: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigImage.isHidden = isHidden
    }

    override func viewDidAppear(_ animated: Bool) {
        
       
    }
    
    
    @IBAction func unwind(_ unwindSegue: UIStoryboardSegue) {
        
        guard let vc = unwindSegue.source as? Page2ViewController
        else {
            return
        }
        print(isHidden)
//        isHidden = vc.isHide
        
        DispatchQueue.main.async {
            self.bigImage.isHidden = vc.isHide
        }
        
    }

    @IBAction func newBtnTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "\(Page2ViewController.self)")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}

