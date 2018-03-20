//
//  Bands.swift
//  MoreCore
//
//  Created by Diler Barbosa on 10/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class ConvertDictionary: NSObject {
    
    var dictionary : NSDictionary
    var structures : [Structure]
    
    init(_ dictionary: NSDictionary, withStructures: [Structure]) {
        self.dictionary = dictionary
        self.structures = withStructures
    }
    
    func inToAnAreasObject() -> [Area] {
        var areas = [Area]()
        for (key, value) in dictionary {
            let newObject = Area(name: key as! String, dictionary: value as! NSDictionary, structures: structures)
            areas.append(newObject)
        }
        return areas
    }
    
    
    func inToALegatoObject() -> [Band] {
        var bands = [Band]()
        for (key, value) in dictionary {
            let newObject = Band(name: key as! String, dictionary: value as! NSDictionary, structures: structures)
            bands.append(newObject)
        }
        return bands
    }
    
    func inToADataPointsObject() -> [DataPoint] {
        var shouldAppend = false
        var dataPoints = Array(repeatElement(DataPoint(name: "empty", dictionary: NSDictionary(), structures: [Structure]()), count: structures.dataPoints.count))
        if dataPoints.count == 0 {
            shouldAppend = true
        }
        for (key, value) in dictionary {
            let newObject = DataPoint(name: key as! String, dictionary: value as! NSDictionary, structures: structures)
            if shouldAppend {
                dataPoints.append(newObject)
            }else{
                dataPoints[structures.dataPoints.filter { $0.name == newObject.name}[0].order] = newObject
            }
        }
        return dataPoints
    }
    
    func inToASeriesObject() -> [Serie] {
        var shouldAppend = false
        var series = Array(repeatElement(Serie(name: "empty", dictionary: NSDictionary(), structures: [Structure]()), count: structures.series.count))
        if series.count == 0 {
            shouldAppend = true
        }
        for (key, value) in dictionary {
            let newObject = Serie(name: key as! String, dictionary: value as! NSDictionary, structures: structures)
            if shouldAppend {
                series.append(newObject)
            }else{
                series[structures.series.filter { $0.name == newObject.name}[0].order] = newObject
            }
        }
        return series
    }
    
    func inToAComponentsObject() -> [Component] {
        var shouldAppend = false
        var components = Array(repeatElement(Component(name: "empty", values: []), count: structures.components.count))
        if components.count == 0 {
            shouldAppend = true
        }
        for (key, value) in dictionary {
            let newObject = Component(name: key as! String, values: value as! [Int])
            if shouldAppend {
                components.append(newObject)
            }else{
               components[structures.components.filter { $0.name == newObject.name}[0].order] = newObject
            }
            
            
            
        }
        return components
    }
    
    
}

