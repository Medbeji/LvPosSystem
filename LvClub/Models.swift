//
//  Table.swift
//  LvClub
//
//  Created by Med Beji on 04/12/2016.
//  Copyright © 2016 Med Beji. All rights reserved.
//

import UIKit

class Table: NSObject {
    
    
     var id = 0
    
     var numberOfPlace = 0
    
     var numberOfPlaceOccupied = 0
    
     var command: Command?
    
     var empty = true
    
    var waiterName : String?

}


class Command: NSObject {
    
     var id = 0  
    
     var numberOfPersons = 0
    
     var  listOfArticle: [Article]?
    
    
}


class Article : NSObject {
    
     var id = 0
    
     var name = ""
    
     var price = 0.0
    
     var category : ArticleCategory?
    
     var imageName = ""
    
}

class ArticleCategory : NSObject {
    
     var id = 0
    
     var name = ""
    
     var articles: [Article]?
    
     var imageName = ""
    
    
    
}
