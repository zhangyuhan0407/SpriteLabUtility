////
////  SLUser+JSON.swift
////  SpriteLabUtility
////
////  Created by yuhan zhang on 7/20/16.
////
////
//
//import Foundation
//
//
//extension SLUser: OCTJSONConvertible {
//    
//    public convenience init(fromJSON json: JSON) {
//        self.init(fromDictionary: json.anyDictionary!)
//        
////        self.id = json[KeyID].string!
////        self.exp = Int(json[KeyExp].double!)
////        
////        
////        self.characters = []
////        for s in json[KeyCharacters].array! {
////            self.characters.append(s.string!)
////        }
////        
////        self.talent = []
////        for s in json[KeyTalent].array! {
////            self.talent.append(s.string!)
////        }
//        
//        
//        
//        //        self.id = json[KeyID].string!
//        //        self.exp = json[KeyExp].int!
//        //        self.characters = json[KeyCharacters].foundationArray as! [String]
//        //        self.talent = json[KeyTalent].foundationArray as! [String]
//        
//    }
//
//    
////    public static func fromJSON(_ json: JSON) -> Self {
////        let dict = json.anyDictionary!
////            return SLUser(fromDictionary: dict)
////        
////    }
//    
//    
//    public func toJSON() -> JSON {
//        
//        
//        //        let idJSON = JSON([KeyID: JSON(self.id)])
//        //        let expJSON = JSON([KeyExp: JSON(Double(self.exp))])
//        
//        
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
//        
//        
//        //        var dict = [String: Any]()
//        //
//        //        dict.updateValue(self.id, forKey: KeyID)
//        //        dict.updateValue(self.exp, forKey: KeyExp)
//        //        dict.updateValue(self.characters, forKey: KeyCharacters)
//        //        dict.updateValue(self.talent, forKey: KeyTalent)
//        //        
//        //        return JSON.from(dict)
//        
//    }
//}
