//
//  Hike.swift
//  Hiking
//
//  Created by Siddesh A on 14/05/21.
//

import Foundation

struct Hike{
    
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike{
    static func all()-> [Hike]{
        return[
        Hike(name: "monumentary trail", imageURL: "1", miles: 8),
        Hike(name: "tom,dock,and hrenry mountain", imageURL: "2", miles: 8.6),
        Hike(name: "tammannah falls", imageURL: "3", miles: 5)]
    }
}
