//
//  Category+CoreDataClass.swift
//  CoreDataRelationships
//
//  Created by Max Taylor on 3/1/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    var documents: [Document]? {
        return self.rawDocuments?.array as? [Document]
    }
    
    convenience init?(name: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else {
                return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        
        self.name = name
    }
}
