//
//  AddTicketViewController.swift
//  PlaneApp
//
//  Created by Oleksandra Solomkina on 03.06.2024.
//

import UIKit

class AddTicketViewController: UIViewController {
    private var appDelegate: AppDelegate =
      UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var fromAirportLabel: UILabel!
    
    @IBOutlet weak var fromAirportTextField: UITextField!
    @IBOutlet weak var fromCityLabel: UILabel!
    
    @IBOutlet weak var fromCityTextField: UITextField!
    
    @IBOutlet weak var fromDateTextField: UITextField!
    @IBOutlet weak var fromDateLAbel: UILabel!
    
    @IBOutlet weak var toDateTextField: UITextField!
    @IBOutlet weak var toAirportTextField: UITextField!
    @IBOutlet weak var toCityTextField: UITextField!
    @IBOutlet weak var orderIdTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var statusTextField: UITextField!
    
    
    let dataPiquer: UIDatePicker = UIDatePicker()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        fromDateTextField.inputView = dataPiquer
        dataPiquer.datePickerMode = .dateAndTime
        dataPiquer.date = .now
        
        dataPiquer.frame = .init(x: 0, y: 0, width: self.view.frame.width, height: 216)
        
        
        orderIdTextField.text = "\(Int.random(in: 111111...9999999))"
        
//        FromDateTextField.addTarget(self, action: #selector(onDataChanged(<#T##dataPiquer: UIDatePicker##UIDatePicker#>)), for: .valueChanged)
        
        
    }
    @objc func datePickerChanged(picker: UIDatePicker) {

        fromDateTextField.text = dataPiquer.date.ISO8601Format()
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onSaveButtonTapped() {
        let ticket = Ticket(entity: Ticket.entity(), insertInto: appDelegate.persistentContainer.viewContext)
        ticket.orderId = Int64(orderIdTextField.text ?? "") ?? 0
        
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd HH:mm"
        let fromDate = formater.date(from: fromDateTextField.text ?? "")
        let toDate = formater.date(from: toDateTextField.text ?? "")
        
        ticket.fromDate = fromDate
        ticket.toDate = toDate
        
        ticket.fromAirport = Airport(entity: Airport.entity(), insertInto:  appDelegate.persistentContainer.viewContext)
        ticket.fromAirport?.name = "test"
        
//        ticket.fromCity = fromCityTextField.text
//        ticket.fromAirport = fromAirportLabel.text
//        ticket.price = Double(priceTextField.text ?? "") ?? 0
//        ticket.toAirport = toAirportTextField.text
//        ticket.toCity = toCityTextField.text
//        ticket.status = "ADD"
        
        appDelegate.saveContext()
    }
    
}
