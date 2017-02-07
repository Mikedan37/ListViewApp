//
//  FoodListTableView.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 2/1/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit

class FoodListTableView: UITableViewController {
    
    //Namez of the foodz Placez non alphebetical
    
   //var restaurants = ["DishDash", "Shadow Brook", "Kula", "Whole Foods", "Adega", "Ciceroes", "Chef Chus", "Cheesecake Factory","Gayles", "Chipotle","Cafe Rehobot", "Cascal", "Taj Cafe", "Falafel Stop", "Kyusu Burmese", "Eureka", "Oren HUmmus", "Chatpatta Corner", "Tayyibaat Meat & Grill", "Craftsman and Wolves", "De Afghan"]
    
    // name of food places alphabetical
    
    var restaurants = ["Adega","cafe rehoboth","cascal","Chatpatta Corner","chef chus","cheesecake factory","Chipotle" ,"Ciceros","craftsman and wolves", "De afghan", "Dish Dash", "eureka","falafel Stop",  "Gayles", "Kula", "Oren humus", "shadowbrook", "Taj cafe","Tayyibaat Meat & Grill", "whole foods"]
    
    // Images of Food Places
    
    var restaurantsimgs = [#imageLiteral(resourceName: "Adega"),#imageLiteral(resourceName: "rehoboth"), #imageLiteral(resourceName: "cascal"), #imageLiteral(resourceName: "chatpattaCorner"), #imageLiteral(resourceName: "ChefChu"),#imageLiteral(resourceName: "Cheesecake Factory"),#imageLiteral(resourceName: "Chipotle"),#imageLiteral(resourceName: "cicerospizzalogo"),#imageLiteral(resourceName: "Craftman&Wolves"),#imageLiteral(resourceName: "DeAfghanan"), #imageLiteral(resourceName: "DishDash"), #imageLiteral(resourceName: "eureka_logo"),#imageLiteral(resourceName: "FalafelStop"),#imageLiteral(resourceName: "Gayles"),#imageLiteral(resourceName: "Kula"),#imageLiteral(resourceName: "oren's humus"),#imageLiteral(resourceName: "shadowbrook"),#imageLiteral(resourceName: "TajCafe"),#imageLiteral(resourceName: "tayyibaatmeatandgrill"),#imageLiteral(resourceName: "WholeFoods")]
    
    // Describes the food we like from place
    
    var fooddiscription = ["Adega is a high class hidden gem found in a place you wouldn't expect, currently the reservations on opentable are booked until march. I would reccomend the pasteis de Bacalhau, its a nice spring salad with flavorful codfish cakes.","","","","Chef Chus is an amazing chineese restaurant, with many options to eat, I would reccomend the chicken chow mein, although high in calories defineitly worth it","CheeseCake Factory serves american cusine in huge portions, although this is food, I would die for a slice of Oreo Dream Extreme Cheesecake","Who the heck dosn't like Chipotle?! Other then A high amount of sodium and possible exposure to ecoli. I could use a nice burrito bowl with brown rice, fajita veggies, chicken, cheese, hot salsa, and some Guac. Everyone needs Some Guac in their lives 🙌","ciceros pizza is just a regular old pizza place, But! the pizza is served flat bread, I would reccomend the bakerpride, it's a pizza that topped with sausage and veggies","","", "DishDash is a great place to eat at when you're in the mood for medditerainian food, my favorite dish is the shish touk, which is a chicken kabob with a nice aroma of spices and flavores complimented by some nice buttery basmati rice","","","Gayles is a cute place by capitola that offers tons of fresh baked pasteries, and warm home made foods. I would reccomend the Lemon Chicken Breast with macaroni & cheese and Sauteed Garlic Spinach","Kula is a great place to eat japanese cuisene, mainly sushi. This cool restaurant has sushi plates running around on little conveyor belts, id reccomend the salmon belly nigiri, its raw salmon on rice. You only live once!", "","","ShadowBrook is a great place to enjoy a meal with a significant other. I would reccomend the Shrimp Sacmpi it's nice and buttery but at the sametime sweet and creamy", "","", "I absolutly love Whole Foods, theres a variety of cooked foods, that taste just like a home made meal. I would reccomend the Citus salmon with baked cumin sweet potatoes and grilled vegetables"]
    
    // Hides Status Bar for prettyness
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Tell us how many sections are in each row
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        //Returns on section for each row(text Section in this case
        return 1
    }
 
    // Tells us how many rows there are
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // will show the amount of rows held in the string Restautants
        return restaurants.count
    }

    // Tells us whats put in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellidentifier = "restaurantsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! FoodListTableViewCell
        cell.restaurantname?.text = restaurants[indexPath.row]
        cell.restaurantpic?.image = restaurantsimgs[indexPath.row]
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "show item detail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
            let detailVC = segue.destination as! MyDetailViewController
                 detailVC.foodnamelblText = restaurants[indexPath.row]
                 detailVC.restaurantdisText = fooddiscription[indexPath.row]
                 detailVC.foodpicImg = restaurantsimgs[indexPath.row]
            }
        }
}
}
