//
//  City+CoreDataProperties.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//
//

import Foundation
import CoreData


extension City {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<City> {
        return NSFetchRequest<City>(entityName: "City")
    }

    @NSManaged public var name: String?
    @NSManaged public var country: String?
    @NSManaged public var airports: NSSet?

}

// MARK: Generated accessors for airports
extension City {

    @objc(addAirportsObject:)
    @NSManaged public func addToAirports(_ value: Airport)

    @objc(removeAirportsObject:)
    @NSManaged public func removeFromAirports(_ value: Airport)

    @objc(addAirports:)
    @NSManaged public func addToAirports(_ values: NSSet)

    @objc(removeAirports:)
    @NSManaged public func removeFromAirports(_ values: NSSet)

}

extension City : Identifiable {

}
