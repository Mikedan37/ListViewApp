//
//  FoodListTableView.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/1/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit
import CoreData


class FoodListTableView: UITableViewController, UISearchResultsUpdating {
    
    var myList = [
         ListObject(letter: "A" ,rname: "Adega",rimage: #imageLiteral(resourceName: "Adega"),check: false)
        ,ListObject(letter: "C",rname: "Cascal" , rimage: #imageLiteral(resourceName: "cascal"),check: false)
        ,ListObject(letter: "C",rname: "Chatpatta Corner", rimage: #imageLiteral(resourceName: "chatpattaCorner"),check: false)
        ,ListObject(letter: "C",rname: "Chef Chus", rimage: #imageLiteral(resourceName: "ChefChu"),check: false)
        ,ListObject(letter: "C",rname: "Cheesecake Factory", rimage: #imageLiteral(resourceName: "Cheesecake Factory"),check: false)
        ,ListObject(letter: "C",rname: "Chipotle", rimage: #imageLiteral(resourceName: "Chipotle"),check: false)
        ,ListObject(letter: "C",rname: "Ciceros", rimage: #imageLiteral(resourceName: "cicerospizzalogo"),check: false)
        ,ListObject(letter: "C",rname: "Craftman & Wolves", rimage: #imageLiteral(resourceName: "Craftman&Wolves"),check: false)
        ,ListObject(letter: "D",rname: "De Afghanan", rimage: #imageLiteral(resourceName: "DeAfghanan"),check: false)
        ,ListObject(letter: "D",rname: "DishDash", rimage: #imageLiteral(resourceName: "DishDash"),check: false)
        ,ListObject(letter: "E",rname: "Eureka", rimage: #imageLiteral(resourceName: "eureka_logo"),check: false)
        ,ListObject(letter: "F",rname: "Falafel Stop", rimage: #imageLiteral(resourceName: "FalafelStop"),check: false)
        ,ListObject(letter: "G",rname: "Gayles", rimage: #imageLiteral(resourceName: "Gayles"),check: false)
        ,ListObject(letter: "K",rname: "Kula", rimage: #imageLiteral(resourceName: "Kula"), check: false)
        ,ListObject(letter: "O",rname: "Oren's Humus", rimage: #imageLiteral(resourceName: "oren's humus"), check: false)
        ,ListObject(letter: "S",rname: "Shadow Brook", rimage: #imageLiteral(resourceName: "shadowbrook"),check: false)
        ,ListObject(letter: "T",rname: "TajCafe", rimage: #imageLiteral(resourceName: "TajCafe"),check: false)
        ,ListObject(letter: "T",rname: "Tayyibaat Meat & Grill", rimage: #imageLiteral(resourceName: "tayyibaatmeatandgrill"),check: false)
        ,ListObject(letter: "W",rname: "Whole Foods", rimage: #imageLiteral(resourceName: "WholeFoods"),check: false)
    ]
 var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    
    var searchController : UISearchController!
    var searchResults : [ListObject] = []
    // Describes the food we like from place
    
    
    
    // Hides Status Bar for prettyness
    override var prefersStatusBarHidden: Bool{
        return true
    }
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
//        
//            
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.tableView.tableHeaderView = self.searchController.searchBar
        //pg 45
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Tell us how many sections are in each row. We only need one section.
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        //Returns on section for each row(text Section in this case
//        return listSectionTitles.count
    }
    

    
     //Tells us how many rows there are
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myList.count
    }
    
    // Tells us whats put in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "restaurantsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! FoodListTableViewCell
        
        
        var cellItem : ListObject
        if searchController.isActive{
            cellItem = searchResults[indexPath.row]
        }
        else {
            cellItem = myList[indexPath.row]
        }
        
        cell.restaurantname?.text = myList[indexPath.row].rname
        cell.restaurantpic?.image = myList[indexPath.row].rimage
        
        cell.restaurantpic?.layer.cornerRadius = cell.restaurantpic.frame.size.width/2.0
        cell.restaurantpic?.clipsToBounds = true
        cell.restaurantpic?.layer.masksToBounds = true
        cell.restaurantpic?.image = myList[indexPath.row].rimage
        
        cell.alpha = 0
        UIView.animate(withDuration: 2, animations: { cell.alpha = 1 })
        
        
        var rotationTransform : CATransform3D = CATransform3DIdentity
        rotationTransform = CATransform3DTranslate(rotationTransform, -250,-250,0)
        cell.restaurantpic?.layer.transform = rotationTransform
        UIView.animate(withDuration: 1, animations: {
            cell.restaurantpic?.layer.transform = CATransform3DIdentity
        })
        // Configure the cell...
        return cell
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return alphabet
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "show item detail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let detailVC = segue.destination as! MyDetailViewController
                
                detailVC.MyDetail = searchController.isActive ?
                    searchResults[indexPath.row] : myList[indexPath.row]
//                detailVC.restaurantdisText = fooddiscription[indexPath.row]
                
            }
        }
    }
    func filterContentForSearchText(searchText: String) {
        searchResults = myList.filter({ (myList : ListObject) -> Bool in
            let nameMatch = myList.rname.range(of: searchText, options: String.CompareOptions.caseInsensitive)
            return nameMatch != nil
   })
}
    func updateSearchResults(for searchController: UISearchController) {
        if let textToSearch = searchController.searchBar.text{
            filterContentForSearchText(searchText: textToSearch)
            tableView.reloadData()
        }
        
    }
}

