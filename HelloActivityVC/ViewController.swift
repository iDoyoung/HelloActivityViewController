//
//  ViewController.swift
//  HelloActivityVC
//
//  Created by Doyoung on 2021/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendFire(_ sender: UIButton) {
        let items = ["❤️‍🔥❤️‍🔥❤️‍🔥❤️‍🔥"] //
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            if let popup = activityVC.popoverPresentationController {
                popup.sourceView = self.view
                popup.sourceRect = CGRect(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 4, width: 0, height: 0)
            }
        }
        self.present(activityVC, animated: true, completion: nil)
    }
    
}
