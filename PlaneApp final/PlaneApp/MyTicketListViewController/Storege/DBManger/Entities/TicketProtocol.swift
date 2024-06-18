//
//  Tickets.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//

import Foundation

protocol TicketProtocol {
//    var toAirport: String? { get set }
//    var fromCity: String? { get set }
//    var fromAirport: String? { get set }
//    var toCity: String? { get set }
    var fromDate: Date? { get set }
    var toDate: Date? { get set }
    var orderId: Int64 { get set }
    var price: Double { get set }
    var status: String? { get set }
}
