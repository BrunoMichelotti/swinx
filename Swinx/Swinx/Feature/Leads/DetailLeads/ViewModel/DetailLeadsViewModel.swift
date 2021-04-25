//
//  DetailLeadsViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class DetailLeadsViewModel {
    var lead: LeadData?
    
    var nameLead: String?
    var descriptionLead: String?
    var reported: String?
    var functionary: [Funcionario]?
    
    init(id: Int, lead: LeadData?) {
        self.lead = lead
        getInfosLead(id: id)
    }
    
    func getInfosLead(id: Int) {
        guard let leadData = lead?.data else { return }
        
        self.nameLead = leadData.leads?[id].nome
        self.descriptionLead = leadData.leads?[id].descricao
        self.reported = getReported(reported: leadData.leads?[id].superiores)
        self.functionary = leadData.leads?[id].funcionarios
    }
    
    private func getReported(reported: [Superior]?) -> String {
        guard let reported = reported else { return "-" }
        var reportedString = ""
        
        for item in reported {
            reportedString += "\(item.nome ?? "-") Cargo: \(item.cargo ?? "-") \n"
        }
        return reportedString
    }
}
