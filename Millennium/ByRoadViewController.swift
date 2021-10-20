//
//  ByRoadViewController.swift
//  Millennium
//
//  Created by Macbook Pro on 15/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit

class ByRoadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
}
