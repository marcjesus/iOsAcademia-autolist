//
//  ViewController.swift
//  autolist
//
//  Created by Marc Jesus on 02/12/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var tableview: UITableView!
    
    let marcasData = [ "Audi", "Jaguar", "Land Rover" , "Lamborghini", "Porsche", "Bentley" , "McLaren"]
    let cars = ["E-Tron","F-Type","Evoque","Urus","911", "New Continental" ,"765LT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableview.dataSource = self
        tableview.delegate = self
        
        let nibName = UINib (nibName: "TableViewCell", bundle: nil)
        tableview.register(nibName, forCellReuseIdentifier: "tableViewCell")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        marcasData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.Init("logo_\(indexPath.item)", title: marcasData[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.commonInit("car_\(indexPath.item)", title: cars[indexPath.item])
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

