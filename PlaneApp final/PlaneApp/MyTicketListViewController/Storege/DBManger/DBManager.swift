//
//  DBManager.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//

import Foundation

protocol DBManager {
    func getMyTicktes() -> [TicketProtocol]
}
