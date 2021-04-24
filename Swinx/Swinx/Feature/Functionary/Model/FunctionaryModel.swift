//
//  FunctionaryModel.swift
//  Swinx
//
//  Created by Any Ambria on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

struct Functionary: Codable {
    let data: FunctionaryDataClass
}

// MARK: - DataClass
struct FunctionaryDataClass: Codable {
    let funcionarios: [Funcionario]
}

// MARK: - Funcionario
struct Funcionario: Codable {
    let nome, codProjetoJira, pre, funcional: String
    let racf, email, squadProfissional, cargo: String
    let dataInicio, dataFim, status, cpf: String
    let rg, matriculaGeco, numeroMAC, celularCorporativo: String
    let telefone, emailCliente, aniversario, shadow: String
    let tecnologia, pontoFocal, tl, pl: String
    let gerente, servico: String

    enum CodingKeys: String, CodingKey {
        case nome
        case codProjetoJira = "cod_projeto_jira"
        case pre, funcional
        case racf = "RACF"
        case email
        case squadProfissional = "squad_profissional"
        case cargo
        case dataInicio = "data_inicio"
        case dataFim = "data_fim"
        case status, cpf, rg
        case matriculaGeco = "matricula_geco"
        case numeroMAC = "numero_mac"
        case celularCorporativo = "celular_corporativo"
        case telefone
        case emailCliente = "email_cliente"
        case aniversario, shadow, tecnologia
        case pontoFocal = "ponto_focal"
        case tl, pl, gerente, servico
    }
}
