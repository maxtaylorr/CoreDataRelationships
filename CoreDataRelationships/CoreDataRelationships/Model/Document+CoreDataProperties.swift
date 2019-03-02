//
//  Document+CoreDataProperties.swift
//  CoreDataRelationships
//
//  Created by Max Taylor on 3/1/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var content: String?
    @NSManaged public var name: String?
    @NSManaged public var rawModifiedDate: NSDate?
    @NSManaged public var size: Int64
    @NSManaged public var category: Category?

}
