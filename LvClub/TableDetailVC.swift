//
//  ViewController.swift
//  LvClub
//
//  Created by Med Beji on 04/12/2016.
//  Copyright © 2016 Med Beji. All rights reserved.
//

import UIKit

class TableDetailVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource {

    @IBOutlet weak var listeOfTables: UICollectionView!
    
    let tables:[Table]? = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
            
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell", for: indexPath) as! TableCell
        
        return cell
        
    }
   
  }

