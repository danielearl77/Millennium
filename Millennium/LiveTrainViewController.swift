//
//  LiveTrainViewController.swift
//  Millennium
//
//  Created by Daniel Earl on 17/10/2021.
//  Copyright © 2021 Daniel Earl. All rights reserved.
//

import UIKit
import WebKit

class LiveTrainViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var browserBackBtn: UIButton!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    @IBOutlet weak var errorMsg: UILabel!
    
    func loadStationData() {
        let stationURL = "https://m.nationalrail.co.uk/pj/ldbboard/dep/CDF"
        let myURL = URL(string: stationURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        errorView.isHidden = true
        let allowBack = webView.canGoBack
        if allowBack == true {
            browserBackBtn.isEnabled = true
            browserBackBtn.isHidden = false
        } else {
            browserBackBtn.isEnabled = false
            browserBackBtn.isHidden = true
        }
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        errorMsg.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        errorMsg.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadStationData()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToTrain", sender: self)
    }
    
    @IBAction func browserBack(_ sender: Any) {
        webView.goBack()
    }
}
