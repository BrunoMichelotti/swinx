//
//  LeadViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class LeadViewModel {
    var leads: LeadData?
    
    func fetchLeads() {
        if let data = JSONDecoderAssist.readLocalFile(forName: "Leads") {
            do {
                leads =  try JSONDecoderAssist.parse(type: LeadData.self, jsonData: data)
            } catch {
                print("erro")
            }
            
        }
    }
}
