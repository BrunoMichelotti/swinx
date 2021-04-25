//
//  SquadViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class SquadViewModel {
    var squads: SquadDataClass?
    
    func fetchFunctionary() {
        if let data = JSONDecoderAssist.readLocalFile(forName: "Squads") {
            do {
                squads =  try JSONDecoderAssist.parse(type: SquadDataClass.self, jsonData: data)
            }catch {
                print("erro")
            }
            
        }
    }
}
