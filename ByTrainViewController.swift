//
//  ByTrainViewController.swift
//  Millennium
//
//  Created by Macbook Pro on 15/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ByTrainViewController: UIViewController {

    @IBOutlet weak var AdViewByTrain: GADBannerView!
    
    override func viewDidLoad() {
        AdViewByTrain.adUnitID = "ca-app-pub-1798485712270431/7408911492" 
        AdViewByTrain.rootViewController = self
        AdViewByTrain.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
