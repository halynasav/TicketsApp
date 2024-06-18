//
//  DBManager.swift
//  PlaneApp
//
//  Created by Test on 17.06.2024.
//

import Foundation
import UIKit

final class CoreDataManager: DBManager {
    private var appDelegate: AppDelegate =
      UIApplication.shared.delegate as! AppDelegate
    
    func getMyTicktes() -> [TicketProtocol] {
        let request = Ticket.fetchRequest()
        let ticktes = try? appDelegate.persistentContainer.viewContext.fetch(request)
        return ticktes ?? []
    }
}
