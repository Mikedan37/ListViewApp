//
//  FoodListTableView.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/1/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit
import CoreData


class FoodListTableView: UITableViewController, UISearchResultsUpdating, NSFetchedResultsControllerDelegate {
    
    var myList : [ListObjectMO] = []
//   myList = [(letter: "A", rname: "Adega", rimage: #imageLiteral(resourceName: "Adega"),check: false)
//        ,(letter: "C",rname: "Cafe Rehoboth",rimage: #imageLiteral(resourceName: "rehoboth"), check: false)
//        ,(letter: "C",rname: "Cascal" ,rimage: #imageLiteral(resourceName: "cascal"),check: false)
//        ,(letter: "C",rname: "Chatpatta Corner",rimage: #imageLiteral(resourceName: "chatpattaCorner"),check: false)
//        ,(letter: "C",rname: "Chef Chus",rimage: #imageLiteral(resourceName: "ChefChu"),check: false)
//        ,(letter: "C",rname: "Cheesecake Factory",rimage: #imageLiteral(resourceName: "Cheesecake Factory"),check: false)
//        ,(letter: "C",rname: "Chipotle",rimage: #imageLiteral(resourceName: "Chipotle"),check: false)
//        ,(letter: "C",rname: "Ciceros",rimage: #imageLiteral(resourceName: "cicerospizzalogo"),check: false)
//        ,(letter: "C",rname: "Craftman & Wolves",rimage: #imageLiteral(resourceName: "Craftman&Wolves"),check: false)
//        ,(letter: "D",rname: "De Afghanan",rimage: #imageLiteral(resourceName: "DeAfghanan"),check: false)
//        ,(letter: "D",rname: "DishDash",rimage: #imageLiteral(resourceName: "DishDash"),check: false)
//        ,(letter: "E",rname: "Eureka",rimage: #imageLiteral(resourceName: "eureka_logo"),check: false)
//        ,(letter: "F",rname: "Falafel Stop",rimage: #imageLiteral(resourceName: "FalafelStop"),check: false)
//        ,(letter: "G",rname: "Gayles",rimage: #imageLiteral(resourceName: "Gayles"),check: false)
//        ,(letter: "K",rname: "Kula",rimage: #imageLiteral(resourceName: "Kula"), check: false)
//        ,(letter: "O",rname: "Oren's Humus",rimage: #imageLiteral(resourceName: "oren's humus"), check: false)
//        ,(letter: "S",rname: "Shadow Brook",rimage: #imageLiteral(resourceName: "shadowbrook"),check: false)
//        ,(letter: "T",rname: "TajCafe",rimage: #imageLiteral(resourceName: "TajCafe"),check: false)
//        ,(letter: "T",rname: "Tayyibaat Meat & Grill",rimage: #imageLiteral(resourceName: "tayyibaatmeatandgrill"),check: false)]
//
    var listDict = [String: [String]]()
    var listSectionTitles = [String()]
    var names = "Soumya & Michaels App"
    
 var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var fooddiscription = ["Adega is a high class hidden gem found in a place you wouldn't expect, currently the reservations on opentable are booked until march. I would recommend the pasteis de Bacalhau, its a nice spring salad with flavorful codfish cakes.","Cafe Rehoboth serves the best Ethopian cusine in the town.Its a family owned business, which maintaints the authenticity of the food. I would recommend their sampler dish, its enough to share with 3 people!!!","Its a very popular Tapas place in Mountain View. It has delicious Latin American food and some live music on Friday. Very lively and upbeat atmosphere. I love their sangrias and Bacon wrapped goat cheese.","This place makes the best Pani Puri in town. Pani Puri is a very famous street food of india. This is a hidden gem, tucked far far away in Fremont but so well worth the visit","Chef Chus is an amazing chineese restaurant, with many options to eat, I would reccomend the chicken chow mein, although high in calories defineitly worth it","CheeseCake Factory serves american cusine in huge portions, although this is food, I would die for a slice of Oreo Dream Extreme Cheesecake","Who the heck dosn't like Chipotle?! Other then A high amount of sodium and possible exposure to ecoli. I could use a nice burrito bowl with brown rice, fajita veggies, chicken, cheese, hot salsa, and some Guac. Everyone needs Some Guac in their lives 🙌","ciceros pizza is just a regular old pizza place, But! the pizza is served flat bread, I would reccomend the bakerpride, it's a pizza that topped with sausage and veggies","Craftsman and Wolves is like food art on plate. You would be blown away by how beautiful your food can look and taste at the same time. Its a little expensive but so very worth of every penny you spend here. My favorite dish is The Rebel, its a savoury muffin filled with a soft boiled egg, ham and spring onions.","De Afghanan serves afghani food. I would recommend their meat and rice dish. The rice is cooked in chicken broth, which makes it very delicoius. The meat is very flavorful and well seasoned with authentice spices. If you are in a mood for some extra carb calories then definetly order Bolani, its very delicious", "DishDash is a great place to eat at when you're in the mood for medditerainian food, my favorite dish is the shish touk, which is a chicken kabob with a nice aroma of spices and flavores complimented by some nice buttery basmati rice","Eureka is a new American style restaurant, which basically means it serves tradional american food and some new fusion reciepes as well. I love their brussel sprout dish.Also try the watermelon salad. its sumptuous and tasty. And ofcourse the carb overloaded Mac and Cheese is also very tasty","Falafel Stop serves Israeli food and I have heard from the native israeli people that its very much like in thier home country. I love their Chicken Shawarma plate and hummus plate. The Falafel ball are also very delicous. Their pita bread is always warm and soft, unlike a lot of other places. This is because they make their own Pita from scratch","Gayles is a cute place by capitola that offers tons of fresh baked pasteries, and warm home made foods. I would reccomend the Lemon Chicken Breast with macaroni & cheese and Sauteed Garlic Spinach","Kula is a great place to eat japanese cuisene, mainly sushi. This cool restaurant has sushi plates running around on little conveyor belts, id reccomend the salmon belly nigiri, its raw salmon on rice. You only live once!", "Oren Hummus is serves israeli food. Its a nice sit down restaurant. I love their Chicken Schnitzel plate. Their baba ganoush is lip smackingly good. All their hummus variations are also very tasty!","ShadowBrook is a great place to enjoy a meal with a significant other. I would reccomend the Shrimp Sacmpi it's nice and buttery but at the sametime sweet and creamy.", "Taj Cafe is a small cafe within an Asian - Pakistani grocery store. Its a good take out place. The food prepared here is fresh becaus its made to order. You need to call them ahead and they start making the food and then you can pick it up at designated time. I love their samosa's and mango lassi!!!","Tayyibat is actually a meat shop and they sell a limited menu dishes on the side. But all are just so perfectly done that you owuld want to come back for more. I love ther chicken kabob with fresh chopped salad. They also serve burgers which are very juicy and tasty.", "I absolutly love Whole Foods, there is a variety of cooked foods, that taste just like a home made meal. I would recommend the Citus salmon with baked cumin sweet potatoes and grilled vegetables."]
    
    
    var searchController : UISearchController!
    var searchResults : [ListObjectMO] = []
    
    var fetchResultsController : NSFetchedResultsController<ListObjectMO>!
    // Describes the food we like from place
    
    
    
//     Hides Status Bar for prettyness
    override var prefersStatusBarHidden: Bool{
        return true
    }
    func CreateListDict(){
        for list in myList{
            let listKey = String((list.rname?[(list.rname?.startIndex)!])!)
            
            if var listValues = listDict[listKey] {
                listValues.append(list.rname!)
            }
            else{
                listDict[listKey] = [list.rname!]
            }
            
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        
        return listSectionTitles[section]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreateListDict()

        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false;
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.tableView.tableHeaderView = self.searchController.searchBar
        //pg 45
        let fetchRequest : NSFetchRequest <ListObjectMO> = ListObjectMO.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "rname", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            let context = appDelegate.persistentContainer.viewContext
            fetchResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
            fetchResultsController.delegate = self

            do{
                try fetchResultsController.performFetch()
                if let fetchedObjects = fetchResultsController.fetchedObjects{
                    myList = fetchedObjects
                }
            } catch {
                print(error)
            }
        }
        
    }
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch type{
        case.insert:
            if let newIndexPath = newIndexPath{
                tableView.insertRows(at: [newIndexPath], with: .fade)
            }
        case.delete:
            if let indexPath = indexPath{
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        case .update:
            if let indexPath = indexPath{
                tableView.reloadRows(at: [indexPath], with: .fade)
            }
        default:
            tableView.reloadData()
        }
        
        if let fetchedObjects = controller.fetchedObjects{
            myList = fetchedObjects as! [ListObjectMO]
        }
    }
    
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // Tell us how many sections are in each row. We only need one section.
    override func numberOfSections(in tableView: UITableView) -> Int {

        //Returns on section for each row(text Section in this case
        return listSectionTitles.count
    }
    

    
     //Tells us how many rows there are
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return myList.count
        let listKey = listSectionTitles[section]
        if let listValues = listDict[listKey]{
            return listValues.count
        }
        else if (searchController.isActive) {
            return searchResults.count
        }
        else {
            return myList.count
        }
       
            }
    
    // Tells us whats put in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "restaurantsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! FoodListTableViewCell
        
        
        var cellItem : ListObjectMO
        
        
        if searchController.isActive{
            cellItem = searchResults[indexPath.row]
        }
        else {
            cellItem = myList[indexPath.row]
        }
        
        cell.restaurantname?.text = cellItem.rname
        cell.restaurantpic?.layer.cornerRadius = (UIImage(data: cellItem.rimage as! Data)?.size.width)!/80.0
        cell.restaurantpic?.clipsToBounds = true
        cell.restaurantpic?.layer.masksToBounds = true
        
        
        cell.alpha = 0
        UIView.animate(withDuration: 2, animations: { cell.alpha = 1 })
        cell.restaurantpic?.image = UIImage(data: cellItem.rimage as! Data)
        
        var rotationTransform : CATransform3D = CATransform3DIdentity
        rotationTransform = CATransform3DTranslate(rotationTransform, -250,-250,0)
        cell.restaurantpic?.layer.transform = rotationTransform
        UIView.animate(withDuration: 2, animations: {
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
              detailVC.restaurantdisText = fooddiscription[indexPath.row]
                detailVC.namesText = names
                
                
            }
//            else if segue.identifier == "AddNewItem"{
//                let addVC.newlist = addData
//            }
            
        }
    }
    func addData(newItem : ListObject){
        myList.append(newItem)
    }

    func filterContentForSearchText(searchText: String) {
        searchResults = myList.filter({ (listItem : ListObjectMO) -> Bool in
            let nameMatch = listItem.rname?.range(of: searchText, options: String.CompareOptions.caseInsensitive)
            return nameMatch != nil
   })
}
    func updateSearchResults(for searchController: UISearchController) {
        if let textToSearch = searchController.searchBar.text{
            filterContentForSearchText(searchText: textToSearch)
            tableView.reloadData()
        }
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            
            
            if let AppDelegate = (UIApplication.shared.delegate as? AppDelegate){
                let context = AppDelegate.persistentContainer.viewContext
                let itemToDelete = self.fetchResultsController.object(at: indexPath)
                context.delete(itemToDelete)
                AppDelegate.saveContext()
                }
        }
        }

}


