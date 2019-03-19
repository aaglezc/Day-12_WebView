//
//  ViewController.swift
//  Day 12_WebView
//
//  Created by MacStudent on 2019-03-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WebKit



class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView1: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView1.navigationDelegate = self
        
        webView1.allowsBackForwardNavigationGestures = true
        
        loadFromURL()
        //loadFromString()
        //loadFromFile()
        
        
       
    }
    
    func loadFromURL()
    {
        
        let url = URL(string: "https://www.google.com")
        let urlReq  = URLRequest(url: url!)
        webView1.load(urlReq)
        
    }

    func loadFromFile()
    {
        
        let localFilePath = Bundle.main.url(forResource: "home", withExtension: "html")
        let myRequest = URLRequest(url: localFilePath!)
        webView1.load(myRequest)
        
    }
    
    func loadFromString()
    {
        
        let htmlStr = "<h1>Hello World</h1"
        webView1.loadHTMLString(htmlStr, baseURL: nil)
        
    }
    

}

