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
    
    public var exp: Int = 0
    
    public var characters: [String]
    
    public var talent: [String]
    
    

    public required init(fromDictionary dict: [String: Any]) {
        
        self.id = dict[KeyID] as! String
        self.exp = (dict[KeyExp] as! String).int!
        self.characters = (dict[KeyCharacters] as! [Any]).stringView
        self.talent = (dict[KeyTalent] as! [Any]).stringView
        
        
        
    }

    
    public func toDictionary() -> [String: Any] {
        return [KeyID: self.id,
                KeyExp: self.exp,
                KeyCharacters: self.characters,
                KeyTalent: self.talent]
    }
    
    
    
    public convenience init(fromJSON json: JSON) {
        self.init(fromDictionary: json.anyDictionary!)
        
        //        self.id = json[KeyID].string!
        //        self.exp = Int(json[KeyExp].double!)
        //
        //
        //        self.characters = []
        //        for s in json[KeyCharacters].array! {
        //            self.characters.append(s.string!)
        //        }
        //
        //        self.talent = []
        //        for s in json[KeyTalent].array! {
        //            self.talent.append(s.string!)
        //        }
        
        
        
        //        self.id = json[KeyID].string!
        //        self.exp = json[KeyExp].int!
        //        self.characters = json[KeyCharacters].foundationArray as! [String]
        //        self.talent = json[KeyTalent].foundationArray as! [String]
        
    }
    
    
    
    public func toJSON() -> JSON {
        
        
        //        let idJSON = JSON([KeyID: JSON(self.id)])
        //        let expJSON = JSON([KeyExp: JSON(Double(self.exp))])
        
        return JSON(self.toDictionary())
        
//        var charJSON = [JSON]()
//        for char in self.characters {
//            charJSON.append(JSON(char))
//        }
//        let charsJSON = JSON(charJSON)
//        //        let characterJSON = JSON([KeyCharacters: charsJSON])
//        
//        
//        var talJSON = [JSON]()
//        for tal in self.talent {
//            talJSON.append(JSON(tal))
//        }
//        let talsJSON = JSON(talJSON)
//        //        let talentJSON = JSON([KeyTalent: talsJSON])
//        
//        
//        return JSON([KeyID: JSON(self.id), KeyExp: JSON(Double(self.exp)), KeyCharacters: charsJSON, KeyTalent: talsJSON])
        
        
        //        var dict = [String: Any]()
        //
        //        dict.updateValue(self.id, forKey: KeyID)
        //        dict.updateValue(self.exp, forKey: KeyExp)
        //        dict.updateValue(self.characters, forKey: KeyCharacters)
        //        dict.updateValue(self.talent, forKey: KeyTalent)
        //
        //        return JSON.from(dict)
        
    }
}


public extension SLUser {
    
    public static func random() -> SLUser {
        let dict: [String: Any] = [KeyID: "\(Int(arc4random() % 1000))", KeyExp: "100", KeyCharacters: ["huangdi", "chiyou"], KeyTalent: []]
        
        return SLUser(fromDictionary: dict)
        
    }
    
}










