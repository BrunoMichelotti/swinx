//
//  RTModel.swift
//  Swinx
//
//  Created by Bruno Michelotti on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

// MARK: - DataClass
struct RTDataClass: Codable {
    let rts: [Rt]

    enum CodingKeys: String, CodingKey {
        case rts = "RTs"
    }
}

// MARK: - Rt
struct Rt: Codable {
    let nome, cordenador: String?
    let descricaoRt: String?
    let squad: [Squad]

    enum CodingKeys: String, CodingKey {
        case nome, cordenador
        case descricaoRt = "descricao_rt"
        case squad
    }
}
