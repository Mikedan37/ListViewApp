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
    
    
    var foodnamelblText : String!
    var foodpicImg: UIImage!
    var restaurantdisText: String!
    var restaurantaddressText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.foodnamelbl.text = self.foodnamelblText
       self.foodpic.image = self.foodpicImg
       self.restaurantdis.text = self.restaurantdisText
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
