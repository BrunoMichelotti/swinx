//
//  DetailSquadViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class DetailSquadViewModel {
    var squad: SquadData?
    
    var nameSquad: String?
    var descriptionSquad: String?
    var triade: String?
    var functionary: [Funcionario]?
    
    init(id: Int, squad: SquadData?) {
        self.squad = squad
        getInfosSquad(id: id)
    }
    
    func getInfosSquad(id: Int) {
        guard let squadData = squad?.data else { return }
        let po = squadData.squad?[id].po ?? "-"
        let teamLead = squadData.squad?[id].teamLead ?? "-"
        let techLead = squadData.squad?[id].techLead ?? "-"
        
        self.nameSquad = squadData.squad?[id].nome
        self.descriptionSquad = squadData.squad?[id].descricao
        self.triade = "PO: \(po) \nTeam Lead: \(teamLead) \nTech Lead: \(techLead)"
        self.functionary = squadData.squad?[id].funcionarios
    }
}
