//
//  CategoryViewController.swift
//  CoreDataRelationships
//
//  Created by Max Taylor on 3/1/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        let category = Category(name: nameTextField.text ?? "")
        
        do {
            try category?.managedObjectContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        } catch {
            print("Could not save category.")
        }
    }
}
