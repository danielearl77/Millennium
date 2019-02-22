//
//  FoodDrinkViewController.swift
//  Millennium
//
//  Created by Macbook Pro on 15/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import GoogleMobileAds

class FoodDrinkViewController: UIViewController {

    @IBOutlet weak var AdViewFoodDrink: GADBannerView!
    
    override func viewDidLoad() {
        AdViewFoodDrink.adUnitID = "ca-app-pub-xxx/xxx" 
        AdViewFoodDrink.rootViewController = self
        AdViewFoodDrink.load(GADRequest())
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
