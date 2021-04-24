//
//  SquadModel.swift
//  Swinx
//
//  Created by Bruno Michelotti on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

// MARK: - DataClass
struct SquadDataClass: Codable {
    let squad: [Squad]
}

// MARK: - Squad
struct Squad: Codable {
    let nome, descricao: String
    let ltf: String?
    let po, teamLead, techLead: String
    let funcionarios: [Functionary]

    enum CodingKeys: String, CodingKey {
        case nome, descricao
        case ltf = "ltf”"
        case po
        case teamLead = "team_lead"
        case techLead = "tech_lead"
        case funcionarios
    }
}
