//
//  JsonDecoder.swift
//  Swinx
//
//  Created by Bruno Michelotti on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

public class JSONDecoderAssist : NSObject {
    
    static func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        return nil
    }
    
    static func parse<T>(type: T.Type ,jsonData: Data) throws -> T where T : Decodable {
                let decodedData = try JSONDecoder().decode(type,
                                                           from: jsonData)
                return decodedData
    }
    
}




