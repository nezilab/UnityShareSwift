//
//  ViewController.swift
//  UnityShare
//
//  Created by nezilab on 2016/06/02.
//  Copyright © 2016年 nezilab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_share: UIButton!
    var unityshare: UnityShare!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print("viewDidLoad")
        unityshare = UnityShare()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func shareHandler(sender: AnyObject) {
        print("hoge")
        unityshare.share(self, text:"mogemoge")
    }
}

