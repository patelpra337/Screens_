//
//  NumberedViewController.swift
//  Screens_
//
//  Created by patelpra on 10/1/19.
//  Copyright © 2019 Crus Technologies. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))

    // This method is called
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
        
    // label.backgroundColor = .brown // make sure view is where it's supposed to be

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = "\(number)"
          //  label.text = String(number)
        }
    }
}
