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
        ListObject(rname: "Adega",rimage: #imageLiteral(resourceName: "Adega"))
        ,ListObject(rname: "Cascal" , rimage: #imageLiteral(resourceName: "cascal") )
        ,ListObject(rname: "Chatpatta Corner", rimage: #imageLiteral(resourceName: "chatpattaCorner") )
        ,ListObject(rname: "Chef Chus", rimage: #imageLiteral(resourceName: "ChefChu"))
        ,ListObject(rname: "Cheesecake Factory", rimage: #imageLiteral(resourceName: "Cheesecake Factory"))
        ,ListObject(rname: "Chipotle", rimage: #imageLiteral(resourceName: "Chipotle"))
        ,ListObject(rname: "Ciceros", rimage: #imageLiteral(resourceName: "cicerospizzalogo"))
        ,ListObject(rname: "Craftman & Wolves", rimage: #imageLiteral(resourceName: "Craftman&Wolves"))
        ,ListObject(rname: "De Afghanan", rimage: #imageLiteral(resourceName: "DeAfghanan"))
        ,ListObject(rname: "DishDash", rimage: #imageLiteral(resourceName: "DishDash"))
        ,ListObject(rname: "Eureka", rimage: #imageLiteral(resourceName: "eureka_logo"))
        ,ListObject(rname: "Falafel Stop", rimage: #imageLiteral(resourceName: "FalafelStop"))
        ,ListObject(rname: "Gayles", rimage: #imageLiteral(resourceName: "Gayles"))
        ,ListObject(rname: "Kula", rimage: #imageLiteral(resourceName: "Kula"))
        ,ListObject(rname: "Oren's Humus", rimage: #imageLiteral(resourceName: "oren's humus"))
        ,ListObject(rname: "Shadow Brook", rimage: #imageLiteral(resourceName: "shadowbrook"))
        ,ListObject(rname: "TajCafe", rimage: #imageLiteral(resourceName: "TajCafe"))
        ,ListObject(rname: "Tayyibaat Meat & Grill", rimage: #imageLiteral(resourceName: "tayyibaatmeatandgrill"))
        ,ListObject(rname: "Whole Foods", rimage: #imageLiteral(resourceName: "WholeFoods"))
    ]
    var listDict = [String: [String]]()
    var listSectionTitles = [String]()
    
    //var myList : [ListObject] = []
    
    var searchController : UISearchController!
    var searchResults : [ListObject] = []
    // Describes the food we like from place
    
    var fooddiscription = ["Adega is a high class hidden gem found in a place you wouldn't expect, currently the reservations on opentable are booked until march. I would recommend the pasteis de Bacalhau, its a nice spring salad with flavorful codfish cakes.","Cafe Rehoboth serves the best Ethopian cusine in the town.Its a family owned business, which maintaints the authenticity of the food. I would recommend their sampler dish, its enough to share with 3 people!!!","Its a very popular Tapas place in Mountain View. It has delicious Latin American food and some live music on Friday. Very lively and upbeat atmosphere. I love their sangrias and Bacon wrapped goat cheese.","This place makes the best Pani Puri in town. Pani Puri is a very famous street food of india. This is a hidden gem, tucked far far away in Fremont but so well worth the visit","Chef Chus is an amazing chineese restaurant, with many options to eat, I would reccomend the chicken chow mein, although high in calories defineitly worth it","CheeseCake Factory serves american cusine in huge portions, although this is food, I would die for a slice of Oreo Dream Extreme Cheesecake","Who the heck dosn't like Chipotle?! Other then A high amount of sodium and possible exposure to ecoli. I could use a nice burrito bowl with brown rice, fajita veggies, chicken, cheese, hot salsa, and some Guac. Everyone needs Some Guac in their lives 🙌","ciceros pizza is just a regular old pizza place, But! the pizza is served flat bread, I would reccomend the bakerpride, it's a pizza that topped with sausage and veggies","Craftsman and Wolves is like food art on plate. You would be blown away by how beautiful your food can look and taste at the same time. Its a little expensive but so very worth of every penny you spend here. My favorite dish is The Rebel, its a savoury muffin filled with a soft boiled egg, ham and spring onions.","De Afghanan serves afghani food. I would recommend their meat and rice dish. The rice is cooked in chicken broth, which makes it very delicoius. The meat is very flavorful and well seasoned with authentice spices. If you are in a mood for some extra carb calories then definetly order Bolani, its very delicious", "DishDash is a great place to eat at when you're in the mood for medditerainian food, my favorite dish is the shish touk, which is a chicken kabob with a nice aroma of spices and flavores complimented by some nice buttery basmati rice","Eureka is a new American style restaurant, which basically means it serves tradional american food and some new fusion reciepes as well. I love their brussel sprout dish.Also try the watermelon salad. its sumptuous and tasty. And ofcourse the carb overloaded Mac and Cheese is also very tasty","Falafel Stop serves Israeli food and I have heard from the native israeli people that its very much like in thier home country. I love their Chicken Shawarma plate and hummus plate. The Falafel ball are also very delicous. Their pita bread is always warm and soft, unlike a lot of other places. This is because they make their own Pita from scratch","Gayles is a cute place by capitola that offers tons of fresh baked pasteries, and warm home made foods. I would reccomend the Lemon Chicken Breast with macaroni & cheese and Sauteed Garlic Spinach","Kula is a great place to eat japanese cuisene, mainly sushi. This cool restaurant has sushi plates running around on little conveyor belts, id reccomend the salmon belly nigiri, its raw salmon on rice. You only live once!", "Oren Hummus is serves israeli food. Its a nice sit down restaurant. I love their Chicken Schnitzel plate. Their baba ganoush is lip smackingly good. All their hummus variations are also very tasty!","ShadowBrook is a great place to enjoy a meal with a significant other. I would reccomend the Shrimp Sacmpi it's nice and buttery but at the sametime sweet and creamy.", "Taj Cafe is a small cafe within an Asian - Pakistani grocery store. Its a good take out place. The food prepared here is fresh becaus its made to order. You need to call them ahead and they start making the food and then you can pick it up at designated time. I love their samosa's and mango lassi!!!","Tayyibat is actually a meat shop and they sell a limited menu dishes on the side. But all are just so perfectly done that you owuld want to come back for more. I love ther chicken kabob with fresh chopped salad. They also serve burgers which are very juicy and tasty.", "I absolutly love Whole Foods, there is a variety of cooked foods, that taste just like a home made meal. I would recommend the Citus salmon with baked cumin sweet potatoes and grilled vegetables."]
    
    // Hides Status Bar for prettyness
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        CreateListDict()
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false;
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
        
        //Returns on section for each row(text Section in this case
        return 1
    }
    
//    func CreateListDict(){
//        listSectionTitles = [String](listDict.keys)
//        listSectionTitles.sort()
//        
//    }
    // Tells us how many rows there are
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        let listkey = listSectionTitles[section]
//        if let listvalues = listDict[listkey] {
//            return listvalues.count
//        }else{
//            return 0
//        }
        
        if searchController.isActive{
            return searchResults.count
        }
        else{
            return myList.count
        }
        
    }
    
    // Tells us whats put in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "restaurantsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! FoodListTableViewCell
        
//       let listkey = listSectionTitles[indexPath.section]
//        if let listvalues = listDict[listkey]{
//            cell.textLabel?.text = listvalues[indexPath.row]
//            
//            let imageFileName = listvalues[indexPath.row].lowercased()
//            let imageFile = imageFileName.replacingOccurrences(of: " ", with: "_")
//            cell.imageView?.image = UIImage(named: imageFile)
//        }
        
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
    
//    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return listSectionTitles
//    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "show item detail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let detailVC = segue.destination as! MyDetailViewController
                
                detailVC.MyDetail = searchController.isActive ?
                    searchResults[indexPath.row] : myList[indexPath.row]
                detailVC.restaurantdisText = fooddiscription[indexPath.row]
                
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
