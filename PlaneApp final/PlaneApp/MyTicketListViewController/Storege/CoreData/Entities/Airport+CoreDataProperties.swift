//
//  Airport+CoreDataProperties.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//
//

import Foundation
import CoreData


extension Airport {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Airport> {
        return NSFetchRequest<Airport>(entityName: "Airport")
    }

    @NSManaged public var name: String?
    @NSManaged public var city: City?

}

extension Airport : Identifiable {

}
