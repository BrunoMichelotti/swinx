//
//  DetailFunctionaryViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class DetailFunctionaryViewModel {
//    var id: Int
    var functionaries: Functionary?
    var detailFunctionary: [(String, Any, String, Any)] = []
    
    init(id: Int, functionaries: Functionary?) {
        self.functionaries = functionaries
        getInfosFunctionary(id: id)
    }
    
    func getInfosFunctionary(id: Int) {
        guard let functionaries = self.functionaries else { return }
        let functionaryData = functionaries.data?.funcionarios?[id]
        
        detailFunctionary.append(("Nome", functionaryData?.nome ?? "-", "", ""))
        detailFunctionary.append(("Aniversário", functionaryData?.aniversario ?? "-", "", ""))
        detailFunctionary.append(("CPF", functionaryData?.cpf ?? "-", "RG", functionaryData?.rg ?? "-"))
        detailFunctionary.append(("Cargo", functionaryData?.cargo ?? "-", "Matrícula Geco", functionaryData?.matriculaGeco ?? "-"))
        
        detailFunctionary.append(("Gerente", functionaryData?.gerente ?? "-", "", ""))
        detailFunctionary.append(("PL", functionaryData?.pl ?? "-", "", ""))
        detailFunctionary.append(("TL", functionaryData?.tl ?? "-", "", ""))
        detailFunctionary.append(("Ponto Focal", functionaryData?.pontoFocal ?? "-", "", ""))
        
        detailFunctionary.append(("Celular Corporativo", functionaryData?.celularCorporativo ?? "-", "Telefone", functionaryData?.telefone ?? ""))
        detailFunctionary.append(("E-mail", functionaryData?.email ?? "-", "", ""))
        detailFunctionary.append(("Data Inicio", functionaryData?.dataInicio ?? "-", "Data Fim", functionaryData?.dataFim ?? "-"))
        
        detailFunctionary.append(("Status", functionaryData?.status ?? "-", "", ""))
        detailFunctionary.append(("RACF", functionaryData?.racf ?? "-", "Funcional", functionaryData?.funcional ?? "-"))
        detailFunctionary.append(("E-mail Cliente", functionaryData?.emailCliente ?? "-", "", ""))
        detailFunctionary.append(("Squad", functionaryData?.squadProfissional ?? "-", "", ""))
        detailFunctionary.append(("Código Projeto Jira", functionaryData?.codProjetoJira ?? "-", "PRE", functionaryData?.pre ?? ""))
        
        detailFunctionary.append(("Tecnologia", functionaryData?.tecnologia ?? "-", "Serviço", functionaryData?.servico ?? "-"))
        detailFunctionary.append(("Shadow", functionaryData?.shadow ?? "-", "", ""))
        detailFunctionary.append(("Número MAC", functionaryData?.numeroMAC ?? "-", "", ""))
        
    }
}
