//
//  ViewController.swift
//  PopupDialogCustomVC
//
//  Created by 王贺 on 2017/12/2.
//  Copyright © 2017年 王贺. All rights reserved.
//

import UIKit
import PopupDialog

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showOkPopup(_ sender: Any) {
        let okVC = OKViewController(nibName: "OKViewController", bundle: nil)
        let popup = PopupDialog(viewController: okVC)
        let cancelButton = CancelButton(title: "Close") {
            
        }
        popup.addButton(cancelButton)
        present(popup, animated: true, completion: nil)
    }
    
    @IBAction func showNotWorkingPopup(_ sender: Any) {
        let failureVC = FailureViewController(nibName: "FailureViewController", bundle: nil)
        let popup = PopupDialog(viewController: failureVC)
        let cancelButton = CancelButton(title: "Close") {
            
        }
        popup.addButton(cancelButton)
        present(popup, animated: true, completion: nil)
    }

}

