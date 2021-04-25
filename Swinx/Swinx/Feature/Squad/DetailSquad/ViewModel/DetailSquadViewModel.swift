//
//  DetailSquadViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class DetailSquadViewModel {
    var squad: Squad?
    
    var nameSquad: String?
    var descriptionSquad: String?
    var triade: String?
    var functionary: [Funcionario]?
    
    init(squad: Squad?) {
        self.squad = squad
        getInfosSquad()
    }
    
    func getInfosSquad() {
        guard let squadData = squad else { return }
        let po = squadData.po ?? "-"
        let teamLead = squadData.teamLead ?? "-"
        let techLead = squadData.techLead ?? "-"
        
        self.nameSquad = squadData.nome
        self.descriptionSquad = squadData.descricao
        self.triade = "PO: \(po) \nTeam Lead: \(teamLead) \nTech Lead: \(techLead)"
        self.functionary = squadData.funcionarios
    }
}
