//
//  ViewController.swift
//  table-view-car-challenge
//
//  Created by Paulo Roberto on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carsTableView: UITableView!
    
    let arrayDeMarcas = ["Fiat", "Honda", "Renault", "BMW", "Audi"]
    
    let fiat = ["Argo", "Siena", "Mobi"]
    let honda = ["Accord", "City", "Civic"]
    let renault = ["Duster", "Sandero", "Logan"]
    let bmw = ["x5", "Série 3", "x6"]
    let audi = ["A4", "A3", "A6"]
    
    var arrayDeCarros: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayDeCarros = [fiat, honda, renault, bmw, audi]

        carsTableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDeCarros[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = arrayDeCarros[section][row]
        cell.imageView?.image = UIImage(named: "carro-esporte")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayDeMarcas[section]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayDeMarcas.count
    }
}
