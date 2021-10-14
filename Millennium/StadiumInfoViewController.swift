//
//  StadiumInfoViewController.swift
//  Millennium
//
//  Created by Macbook Pro on 15/01/2019.
//  Copyright © 2019 Daniel Earl. All rights reserved.
//

import UIKit
import WebKit

class StadiumInfoViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    
    func loadStadiumInfo() {
        errorText.text = "Loading..."
        let fixturesURL = "http://en.wikipedia.org/wiki/Millennium_Stadium"
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        loadStadiumInfo()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        errorView.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        errorText.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        errorText.text = "Error Loading Page"
        loadingSpinner.isHidden = true
    }
}
