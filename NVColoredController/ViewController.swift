//
//  ViewController.swift
//  NVColoredController
//
//  Created by Vy Nguyen on 1/18/16.
//  Copyright © 2016 VVLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailViewControllerDelegate {

    convenience init(){
        self.init(nibName: "ViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClick(sender: UIButton) {
        let viewController = DetailViewController.init(title: "title :\((sender.titleLabel?.text)!)")
        viewController.delegate = self
        self.presentViewController(viewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func send(color: UIColor) {
        self.view.backgroundColor = color
    }

}

