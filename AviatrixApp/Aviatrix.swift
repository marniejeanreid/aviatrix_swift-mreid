//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author = " "
    var location = "St. Louis"
    //COULDN'T create a blank variable then initialize it for current location.... so I couldn't get it to say where I landed.. Why not?
    
    init (authorName : String){
        author = authorName
    }
    
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    //Must include the return value type of a function to use it!!! (i.e. -> Int below)
    
    func distanceTo(target : String, current : String) -> Int {
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
    }
    
    func knownDestinations() -> [String] {
        // Must include the let data = AviatrixData() to access the class AviatrixData, then we can actually access the knownDistances dictionary
        let data = AviatrixData()
        return Array(data.knownDistances.keys)
    }
}
