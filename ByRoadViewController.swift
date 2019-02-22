//
//  ByRoadViewController.swift
//  Millennium
//
//  Created by Macbook Pro on 15/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ByRoadViewController: UIViewController {

    @IBOutlet weak var AdViewByRoad: GADBannerView!
    
    override func viewDidLoad() {
        AdViewByRoad.adUnitID = "ca-app-pub-xxx/xxx" 
        AdViewByRoad.rootViewController = self
        AdViewByRoad.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
