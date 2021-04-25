//
//  RTViewModel.swift
//  Swinx
//
//  Created by Bruno Michelotti on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class RTViewModel {
    var rtData: RTData?
    
    func fetchRt() {
        if let data = JSONDecoderAssist.readLocalFile(forName: "RTs") {
            do {
                rtData =  try JSONDecoderAssist.parse(type: RTData.self, jsonData: data)
            } catch {
                print("erro")
            }
            
        }
    }
}
