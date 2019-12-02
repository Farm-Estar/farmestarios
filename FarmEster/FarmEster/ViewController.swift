//
//  ViewController.swift
//  FarmEster
//
//  Created by Keeano Martin on 11/29/19.
//  Copyright © 2019 Keeano Martin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //load up the application URL
        let url = URL(string: "https://farmestar.herokuapp.com")
        //Setup the DataStore for LocalStorage
        let webConfig = webView.configuration
        //Persist localStorage through WKWebView
        webConfig.websiteDataStore = WKWebsiteDataStore.default()
        //Launch WebView to MainStoryboard
        webView.load(URLRequest(url: url!))
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        title = webView.title
//        if(webView.url?.absoluteString == "https://app.getpulse.co/devices"){
//            let script = "localStorage.getItem('userName')"
//            webView.evaluateJavaScript(script){ (result, error) in
////                if let result = result {
//                    //register device to onesignal via result
////                    let str = String(describing: result)
////                    OneSignal.setEmail(str);
////                }
//            }
//        }
//    }
}

