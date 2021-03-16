//
//  ViewController.swift
//  VideoInWebViewTest
//
//  Created by Ivan Ganzha on 16.03.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerView: UIView!
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addWebView()
    }
    
    func addWebView(){
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []
        
        webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 325, height: 275), configuration: configuration)
        
        bannerView.addSubview(webView)
        
        webView.loadHTMLString("<head></head><body><video autoplay playsinline width=\"100%\" height=\"100%\"><source src=\"https://content.admixer.net/test1/458e4d2d-e644-4638-b2b9-f5577d5108cd/decd9589-fb3b-4aa8-a702-2c8c50c8d240.mp4\" type=\"video/mp4\"></video></body>", baseURL: URL(string: "https://content.admixer.net/"))
        
//        webView.load(URLRequest(url: URL(string: "https://ua2cdn.admixer.net/public/demo/player_vast.html")!))
    }


}

