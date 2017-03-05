//
//  MyDetailViewController.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/2/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {
    @IBOutlet var foodnamelbl: UILabel!
    @IBOutlet var foodpic: UIImageView!
    @IBOutlet var restaurantdis: UITextView!
    
    var MyDetail : ListObject!
    
    var foodnamelblText : String!
    var foodpicImg: UIImage!
    var restaurantdisText: String!
    var restaurantaddressText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodnamelbl.text = self.MyDetail.rname
        self.foodpic.image = self.MyDetail.rimage
        self.restaurantdis.text = self.restaurantdisText
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
