//
//  Ticket+CoreDataProperties.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//
//

import Foundation
import CoreData


extension Ticket {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ticket> {
        return NSFetchRequest<Ticket>(entityName: "Ticket")
    }

    @NSManaged public var fromDate: Date?
    @NSManaged public var orderId: Int64
    @NSManaged public var price: Double
    @NSManaged public var status: String?
    @NSManaged public var toDate: Date?
    @NSManaged public var fromAirport: Airport?
    @NSManaged public var toAirport: Airport?

}

extension Ticket : Identifiable {

}
