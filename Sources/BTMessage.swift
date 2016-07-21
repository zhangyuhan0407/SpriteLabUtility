//
//  BTMessage.swift
//  SLBattleServer
//
//  Created by yuhan zhang on 7/1/16.
//
//


import Foundation

#if os(iOS)
    let UserID = UserDefaults.standard().object(forKey: "userid") as! String
#else
    let UserID = "WebSocketServer"
#endif



public enum InitError: ErrorProtocol {
    case MessageInitError
}



public struct BTMessage: CustomStringConvertible {
    
    public var userid: String = UserID
    
    public var command: BTCommand
    
    public var params: [String: Any]
    
    
    public init?(from string: String) {
        
        do {
            
            let json = try JSON.deserialize(string)
            
            guard let id = json["userid"].string else {
                return nil
            }
            
            
            guard let command = json["command"].string else {
                return nil
            }
            
            
            guard let params = json["params"].anyDictionary else {
                return nil
            }
            
            
            self.userid = id
            self.command = BTCommand.decode(string: command)
            self.params = params
            
            
        } catch {
            return nil
        }
        
        
    }
    
    
    public init(command: BTCommand, params: [String: Any] = [:]) {
        self.userid = UserID
        self.command = command
        self.params = params
    }
    

    public var description: String {
        
        let dict: [String: Any] = ["userid": self.userid, "command": self.command.description, "params": self.params]
        return JSON(dict).description
        
    }
    
    
    
}




