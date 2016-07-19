//
//  SLUser.swift
//  SpriteLabClient
//
//  Created by yuhan zhang on 6/27/16.
//  Copyright © 2016 octopus. All rights reserved.
//

import Foundation


public let KeyID = "id"
public let KeyExp = "exp"
public let KeyCharacters = "characters"
public let KeyTalent = "talent"



public class SLUser: OCTModel {
    
    public let id: String
    
    public var exp: Int
    
    public var characters: [String]
    
    public var talent: [String]
    
    
    public init(fromJSON json: JSON) {

        self.id = json[KeyID].string!
        self.exp = json[KeyExp].int!
        self.characters = json[KeyCharacters].foundationArray as! [String]
        self.talent = json[KeyTalent].foundationArray as! [String]
        
    }
    
    
    public func toJSON() -> JSON {
        
        var dict = [String: Any]()
        
        dict.updateValue(self.id, forKey: KeyID)
        dict.updateValue(self.exp, forKey: KeyExp)
        dict.updateValue(self.characters, forKey: KeyCharacters)
        dict.updateValue(self.talent, forKey: KeyTalent)
        
        return JSON.from(dict)
        
    }
    
    
    
    public required init(fromDictionary dict: [String: Any]) {
        
        self.id = dict[KeyID] as! String
        self.exp = Int(dict[KeyExp] as! String)!
        self.characters = dict[KeyCharacters] as! [String]
        self.talent = dict[KeyTalent] as! [String]
        
    }
    
    
    public func toDictionary() -> [String: Any] {
        return [KeyID: self.id, KeyExp: self.exp, KeyCharacters: "\(self.characters)", KeyTalent: "\(self.talent)"]
    }
    
}


extension SLUser {
    
    static func random() -> SLUser {
        let dict = [KeyID: "\(Int(arc4random() % 1000))", KeyExp: "100", KeyCharacters: ["huangdi", "chiyou"], KeyTalent: []]
        
        return SLUser(fromDictionary: dict as! Dictionary<String, AnyObject>)
        
    }
    
}










