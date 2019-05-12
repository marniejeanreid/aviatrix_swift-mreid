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
    var location = "SLC"
    //COULDN'T create a blank variable then initialize it for current location.... so I couldn't get it to say where I landed.. Why not?
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init (authorName : String){
        author = authorName
    }
    
    var running = false
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        let fuelNeeded = Double(Double(maxFuel) - Double(fuelLevel))
        let data = AviatrixData()
        fuelCost += fuelNeeded * data.fuelPrices[location]!
        
        return fuelNeeded
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: location)
        let fuelUsed = Double(distanceTraveled) / milesPerGallon
        fuelLevel -= fuelUsed
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
