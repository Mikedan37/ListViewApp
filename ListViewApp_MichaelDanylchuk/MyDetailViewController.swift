//
//  MyDetailViewController.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/2/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit
import CoreData

class MyDetailViewController: UIViewController {
    @IBOutlet var foodnamelbl: UILabel!
    @IBOutlet var foodpic: UIImageView!
    @IBOutlet var restaurantdis: UITextView!
    @IBOutlet var names: UILabel!
    
    var MyDetail : ListObjectMO!
    
    var foodnamelblText : String!
    var foodpicImg: UIImage!
    var restaurantdisText: String!
    var namesText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodnamelbl.text = self.MyDetail.rname
        self.foodpic.image = UIImage(data: self.MyDetail.rimage as! Data)
        self.restaurantdis.text = self.restaurantdisText
        self.names.text = namesText
        
        foodpic?.layer.cornerRadius = foodpic.frame.size.width/4.0
        foodpic?.clipsToBounds = true
        foodpic?.layer.masksToBounds = true
        self.foodpic? = foodpic
        restaurantdis.alpha = 0
        UIView.animate(withDuration: 2, animations: {self.restaurantdis.alpha = 1 })
        var rotationTransform : CATransform3D = CATransform3DIdentity
        rotationTransform = CATransform3DTranslate(rotationTransform, -250,-250,0)
        foodpic?.layer.transform = rotationTransform
        UIView.animate(withDuration: 1, animations: {
            self.foodpic?.layer.transform = CATransform3DIdentity        // Do any additional setup after loading the view.
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
