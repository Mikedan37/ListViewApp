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
    var rimage = UIImage(named: "")
        
    init(rname: String,rimage: UIImage )
    {
        self.rname = rname
        self.rimage = rimage
        
    }
}
