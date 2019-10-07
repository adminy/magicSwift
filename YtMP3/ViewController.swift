//
//  ViewController.swift
//  YtMP3
//
//  Created by Marin on 07/10/2019.
//  Copyright © 2019 Marin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet
    var titleLabel: UITextView?
    var urlTextfield: UITextField?
    var progressBar: UIProgressView?
    var statusLabel: UITextView?
    var button: UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Title Label
        titleLabel = UITextView(frame:
            CGRect(x: 20, y: 80, width: self.view.frame.size.width - 40, height: 40))
        titleLabel?.text = "Youtube MP3 Downloader"
        titleLabel?.font = UIFont(name: "Arial", size: 28)
        self.view.addSubview(titleLabel!)
    
        // TEXTBox
        urlTextfield = UITextField(frame:
                CGRect(x: 20, y: self.view.frame.size.height * 0.3, width: self.view.frame.size.width - 40, height: 40))
        urlTextfield?.placeholder = "Youtube URL Here ..."
        self.view.addSubview(urlTextfield!)
        
        //ProgressBar
        progressBar = UIProgressView(frame:
            CGRect(x: 20, y: self.view.frame.size.height * 0.5, width: self.view.frame.size.width - 40, height: 40))
        progressBar?.trackTintColor = UIColor.lightGray
        progressBar?.tintColor = UIColor.blue
        view.addSubview(progressBar!)
        
        //Status Label
        statusLabel = UITextView(frame:
            CGRect(x: 20, y: self.view.frame.size.height * 0.52, width: self.view.frame.size.width - 40, height: 220))
        statusLabel?.font = UIFont(name: "Arial", size: 12)
        self.view.addSubview(statusLabel!)
        
        // Button
        button = UIButton(frame:
            CGRect(x: 80, y: self.view.frame.size.height * 0.75, width: self.view.frame.size.width - 160, height: 40 ))
        button?.backgroundColor = .black
        button?.setTitle("Give Me MP3", for: .normal)
        button?.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button!)
        
       
        
    }
    
    @objc func buttonClicked() {
        progressBar?.setProgress(1, animated: true)
        
        statusLabel?.text = "Done ....\nsaid the wise one\n............................................................................................................................."
        
//        let alert = UIAlertController(title: "URL is This", message: urlTextfield?.text, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in}))
//        self.present(alert, animated: true, completion: nil)
//
        
    }
    
}
