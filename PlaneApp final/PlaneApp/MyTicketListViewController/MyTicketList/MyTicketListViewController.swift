//
//  MyTicketListViewController.swift
//  PlaneApp
//
//  Created by Oleksandra Solomkina on 03.06.2024.
//

import UIKit

class MyTicketListViewController: UIViewController {
    private var manager: DBManager = {
       CoreDataManager()
    }()

    fileprivate var tickets = [TicketProtocol]()

    @IBOutlet weak var savedTicketsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
        setupNavigationBar()

      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tickets = manager.getMyTicktes()
        savedTicketsTableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupNavigationBar() {
        UINavigationBar.appearance().barTintColor = .systemBlue
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white, 
                                                            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]
  
    }

    private func setupTableView() {
        savedTicketsTableView.delegate = self
        savedTicketsTableView.dataSource = self
    }
}

extension MyTicketListViewController: UITableViewDelegate {
    
}

extension MyTicketListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tickets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "TicketTableViewCell",
            for: indexPath
        ) as? TicketTableViewCell else {
            return UITableViewCell()
        }
//        cell.fromCityLabel.text = tickets[indexPath.row].fromCity
        return cell
    }
    
    
}
