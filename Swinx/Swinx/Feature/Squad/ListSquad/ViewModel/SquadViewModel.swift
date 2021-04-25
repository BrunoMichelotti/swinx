//
//  SquadViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class SquadViewModel {
    var squads: SquadData?
    
    func fetchSquad() {
        if let data = JSONDecoderAssist.readLocalFile(forName: "Squads") {
            do {
                squads =  try JSONDecoderAssist.parse(type: SquadData.self, jsonData: data)
            } catch {
                print("erro")
            }
            
        }
    }
}
