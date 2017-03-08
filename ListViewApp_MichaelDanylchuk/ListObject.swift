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
   
    
    var myList2 = [ListObject(letter: "A",rname: "Adega",rimage: #imageLiteral(resourceName: "Adega") ,check: false)
    ,ListObject(letter: "C",rname: "Cafe Rehoboth",rimage: #imageLiteral(resourceName: "rehoboth"), check: false)
    ,ListObject(letter: "C",rname: "Cascal" ,rimage: #imageLiteral(resourceName: "cascal"),check: false)
    ,ListObject(letter: "C",rname: "Chatpatta Corner",rimage: #imageLiteral(resourceName: "chatpattaCorner"),check: false)
    ,ListObject(letter: "C",rname: "Chef Chus",rimage: #imageLiteral(resourceName: "ChefChu"),check: false)
    ,ListObject(letter: "C",rname: "Cheesecake Factory",rimage: #imageLiteral(resourceName: "Cheesecake Factory"),check: false)
    ,ListObject(letter: "C",rname: "Chipotle",rimage: #imageLiteral(resourceName: "Chipotle"),check: false)
    ,ListObject(letter: "C",rname: "Ciceros",rimage: #imageLiteral(resourceName: "cicerospizzalogo"),check: false)
    ,ListObject(letter: "C",rname: "Craftman & Wolves",rimage: #imageLiteral(resourceName: "Craftman&Wolves"),check: false)
    ,ListObject(letter: "D",rname: "De Afghanan",rimage: #imageLiteral(resourceName: "DeAfghanan"),check: false)
    ,ListObject(letter: "D",rname: "DishDash",rimage: #imageLiteral(resourceName: "DishDash"),check: false)
    ,ListObject(letter: "E",rname: "Eureka",rimage: #imageLiteral(resourceName: "eureka_logo"),check: false)
    ,ListObject(letter: "F",rname: "Falafel Stop",rimage: #imageLiteral(resourceName: "FalafelStop"),check: false)
    ,ListObject(letter: "G",rname: "Gayles",rimage: #imageLiteral(resourceName: "Gayles"),check: false)
    ,ListObject(letter: "K",rname: "Kula",rimage: #imageLiteral(resourceName: "Kula"), check: false)
    ,ListObject(letter: "O",rname: "Oren's Humus",rimage: #imageLiteral(resourceName: "oren's humus"), check: false)
    ,ListObject(letter: "S",rname: "Shadow Brook",rimage: #imageLiteral(resourceName: "shadowbrook"),check: false)
    ,ListObject(letter: "T",rname: "TajCafe",rimage: #imageLiteral(resourceName: "TajCafe"),check: false)
    ,ListObject(letter: "T",rname: "Tayyibaat Meat & Grill",rimage: #imageLiteral(resourceName: "tayyibaatmeatandgrill"),check: false)
    ,ListObject(letter: "W",rname: "Whole Foods", rimage: #imageLiteral(resourceName: "WholeFoods"),check: false)]
    
    init( letter: String,rname: String,rimage: UIImage, check: Bool)
    {
        self.letter = letter
        self.rname = rname
        self.rimage = rimage
        self.check = check
        
        
      

    }
}
