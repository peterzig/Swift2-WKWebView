//
//  ViewController.swift
//  WKWebView
//
//  Created by Peter Zaporowski on 09.03.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView) // when code from viewDidAppear was here, constraints weren't good
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://github.com/peterzig")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadRequest(urlString: String){
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL:url)
        
        webView.loadRequest(request)
    }
    
    @IBAction func loadApple(sender: AnyObject) {
        loadRequest("https://www.apple.com")
    }

    @IBAction func loadGitHub(sender: AnyObject) {
        loadRequest("https://github.com/peterzig")
    }

    @IBAction func loadAboutMe(sender: AnyObject) {
        loadRequest("https://about.me/peterzig")
    }
}