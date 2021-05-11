//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by shunnamiki on 2021/05/11.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals = [
        Meal(
            name: "breakfast",
            food: [
                Food(name: "bread", description: "yummy"),
                Food(name: "milk", description: "yummy yummy"),
                Food(name: "orange", description: "yummy yummy yummy"),
            ]
        ),
        Meal(
            name: "lunch",
            food: [
                Food(name: "rice", description: "super yummy"),
                Food(name: "miso soup", description: "super yummy yummy"),
                Food(name: "sushi", description: "super yummy yummy yummy"),
            ]
        ),
        Meal(
            name: "dinner",
            food: [
                Food(name: "pasta", description: "super super yummy"),
                Food(name: "desert", description: "super super yummy yummy"),
                Food(name: "ice", description: "super super yummy yummy yummy"),
            ]
        ),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel!.text = food.name
//        cell.detailTextLabel!.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}
