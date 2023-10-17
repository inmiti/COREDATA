//
//  ViewController.swift
//  CoreDataApp
//
//  Created by ibautista on 11/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let database = Database()
        database.deleteAll()
        database.createPerson()
        database.loadPersons()
        database.loadPersonsWithChildrens()
        database.loadPersonsSortedByAge()

        database.delete(by: "David")
        database.loadPersons()
    }
}
