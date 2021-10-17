//
//  LiveTrainViewController.swift
//  Millennium
//
//  Created by Daniel Earl on 17/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit

class LiveTrainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToTrain", sender: self)
    }
    
    /*
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
