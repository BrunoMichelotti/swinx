//
//  LeadsModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

struct LeadData: Codable {
    let data: LeadDataClass?
}

// MARK: - DataClass
struct LeadDataClass: Codable {
    let leads: [Lead]?
}

// MARK: - Lead
struct Lead: Codable {
    let nome: String?
    let superiores: [Superior]?
    let descricao: String?
    let funcionarios: [Funcionario]?
}

// MARK: - Superior
struct Superior: Codable {
    let nome, cargo: String?
}
