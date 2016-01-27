//
//  DetailViewController.swift
//  NVColoredController
//
//  Created by Vy Nguyen on 1/18/16.
//  Copyright © 2016 VVLab. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: NSObjectProtocol {
    func send(color: UIColor)
}

class DetailViewController: UIViewController {

    var delegate: DetailViewControllerDelegate?
    @IBOutlet weak var label: UILabel!
    
    var titleText:NSString?
    
    convenience init(){
        self.init(nibName: "DetailViewController", bundle: nil)
    }
    
    convenience init(title: NSString) {
        self.init()
        self.titleText = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = self.titleText! as String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(sender: UIButton) {
        delegate?.send(sender.backgroundColor!)
        self.dismissViewControllerAnimated(true, completion: {});
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
