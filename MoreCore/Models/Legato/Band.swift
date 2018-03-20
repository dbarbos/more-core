//
//  Band.swift
//  MoreCore
//
//  Created by Diler Barbosa on 08/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class Band: ReportDataProtocol{
    
    var name = String()
    var day = BandPeriod()
    var early = BandPeriod()
    var late = BandPeriod()
    var night = BandPeriod()
    var structures = [Structure]()
    
    required init(name: String, dictionary: NSDictionary, structures: [Structure]){
        
        self.name = name
        self.structures = structures
        if let newDay = dictionary["day"] as? NSDictionary {
            day = self.getBandPeriod(dictionary: newDay)
        }
        if let newEarly = dictionary["early"] as? NSDictionary {
            early = self.getBandPeriod(dictionary: newEarly)
        }
        if let newLate = dictionary["late"] as? NSDictionary {
            late = self.getBandPeriod(dictionary: newLate)
        }
        if let newNight = dictionary["night"] as? NSDictionary {
            night = self.getBandPeriod(dictionary: newNight)
        }
        
    }
    
    func getBandPeriod(dictionary: NSDictionary) -> BandPeriod {
        let bandPeriod = BandPeriod()
        
        bandPeriod.timeStart = dictionary["TIME_START"] as! String
        bandPeriod.stopped = dictionary["Stopped"] as! String
        bandPeriod.bandStopCounter = dictionary["BandStopCounter"] as! String
        bandPeriod.bandStopedTime = dictionary["BandStoppedTime"] as! String
        
        return bandPeriod
    }
    
    
}
