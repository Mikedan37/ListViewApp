//
//  AddViewController.swift
//  ListViewApp_MichaelDanylchuk
//
//  Created by Michael Danylchuk on 3/8/17.
//  Copyright © 2017 Michael Danylchuk. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {

    @IBOutlet var AddName: UITextField!
    @IBOutlet var AddPic: UITextField!
    
    var newList : ((ListObject) -> ())!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickedCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func clickedSave(_ sender: Any) {
        newList(ListObject(letter: "", rname: self.AddName.text!, rimage: UIImage(named: self.AddPic.text!)!, check: false))
        
        self.dismiss(animated: true, completion: nil)
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
