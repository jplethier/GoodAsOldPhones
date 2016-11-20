//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Joao Paulo Lethier on 19/11/16.
//  Copyright © 2016 Joao Paulo Lethier. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    var productIcons: [UIImage]?
    var productBackgrounds: [UIImage]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Set", "1921 Dial Phone",
                        "1937 Desk Set", "1984 Motorola Portable"]
        productIcons = [#imageLiteral(resourceName: "image-cell1"), #imageLiteral(resourceName: "image-cell2"), #imageLiteral(resourceName: "image-cell3"), #imageLiteral(resourceName: "image-cell4")]
        productBackgrounds = [#imageLiteral(resourceName: "phone-fullscreen1"), #imageLiteral(resourceName: "phone-fullscreen2"),
                              #imageLiteral(resourceName: "phone-fullscreen3"), #imageLiteral(resourceName: "phone-fullscreen4")]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames {
            return pNames.count
        }
        
        return 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell) else {
                return
            }
            
            productVC?.productName = productNames?[indexPath.row]
            productVC?.productImage = productBackgrounds?[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        guard let productName = productNames?[indexPath.row],
              let productIcon = productIcons?[indexPath.row] else {
            return cell
        }
        
        cell.textLabel?.text = productName
        cell.imageView?.image = productIcon
        
        return cell
    }
}
