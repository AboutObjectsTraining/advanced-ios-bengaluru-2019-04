// Copyright (C) 2019 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

import Foundation

class Being: NSObject
{
    var name: String
    
    override var description: String {
        return "\(type(of: self)): \(name)"
    }
    
    init(name: String) {
        self.name = name
        super.init()
    }
}

class Person: Being
{
    var pets: [Being]?
    
    override var description: String {
        return "\(super.description)\nPets: \(pets?.description ?? "null")"
    }
    
    override func responds(to aSelector: Selector!) -> Bool {
        if super.responds(to: aSelector) { return true }
        guard let pets = pets else { return false }
        for pet in pets {
            if pet.responds(to: aSelector) { return true }
        }
        return false
    }
    
    override func forwardingTarget(for aSelector: Selector!) -> Any? {
        guard let pets = pets else { return nil }
        for pet in pets {
            if pet.responds(to: aSelector) { return pet }
        }
        return nil
    }
}
