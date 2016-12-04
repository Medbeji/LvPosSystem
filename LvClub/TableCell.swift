//
//  TableViewCell.swift
//  LvClub
//
//  Created by Med Beji on 04/12/2016.
//  Copyright © 2016 Med Beji. All rights reserved.
//

import UIKit

class TableCell: UICollectionViewCell {
    
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var tableNumber: UILabel!
    @IBOutlet weak var numberOfPlaceOccupied: UILabel!
    @IBOutlet weak var waiterName: UILabel!

    var table : Table? {
        didSet {
            if let nbPlaceOccupied = table?.numberOfPlaceOccupied {
                numberOfPlaceOccupied.text = "\(nbPlaceOccupied)"
                
            }
            if let numTable = table?.id {
                tableNumber.text = "\(numTable)"
            }
            
            if let waiter = table?.waiterName {
                waiterName.text = waiter
            }
            
            if let empty = table?.empty {
                if empty == false {
                    tableImage.backgroundColor = UIColor.green
                } else {
                    tableImage.backgroundColor = UIColor.clear
                }
            }
        }
    }
    
    
    
}
