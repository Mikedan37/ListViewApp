//
//  ListObject.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 3/4/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit
import CoreData


class ListObject: NSObject {
    var rname = " "
    var rimage = UIImage()
    var letter = " "
    var check = Bool()
   

    init( letter: String,rname: String,rimage: UIImage, check: Bool)
    {
        self.letter = letter
        self.rname = rname
        self.rimage = rimage
        self.check = check
        
        
      

    }
}
