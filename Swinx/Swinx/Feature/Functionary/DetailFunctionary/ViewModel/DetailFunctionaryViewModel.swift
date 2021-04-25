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
    var functionary: Funcionario?
    var detailFunctionary: [(String, Any, String, Any)] = []
    
    init(id: Int, functionary: Funcionario?) {
        self.functionary = functionary
        getInfosFunctionary()
    }
    
    func getInfosFunctionary() {
        guard let functionary = self.functionary else { return }
        
        detailFunctionary.append(("Nome", functionary.nome ?? "-", "", ""))
        detailFunctionary.append(("Aniversário", functionary.aniversario ?? "-", "", ""))
        detailFunctionary.append(("CPF", functionary.cpf ?? "-", "RG", functionary.rg ?? "-"))
        detailFunctionary.append(("Cargo", functionary.cargo ?? "-", "Matrícula Geco", functionary.matriculaGeco ?? "-"))
        
        detailFunctionary.append(("Gerente", functionary.gerente ?? "-", "", ""))
        detailFunctionary.append(("PL", functionary.pl ?? "-", "", ""))
        detailFunctionary.append(("TL", functionary.tl ?? "-", "", ""))
        detailFunctionary.append(("Ponto Focal", functionary.pontoFocal ?? "-", "", ""))
        
        detailFunctionary.append(("Celular Corporativo", functionary.celularCorporativo ?? "-", "Telefone", functionary.telefone ?? ""))
        detailFunctionary.append(("E-mail", functionary.email ?? "-", "", ""))
        detailFunctionary.append(("Data Inicio", functionary.dataInicio ?? "-", "Data Fim", functionary.dataFim ?? "-"))
        
        detailFunctionary.append(("Status", functionary.status ?? "-", "", ""))
        detailFunctionary.append(("RACF", functionary.racf ?? "-", "Funcional", functionary.funcional ?? "-"))
        detailFunctionary.append(("E-mail Cliente", functionary.emailCliente ?? "-", "", ""))
        detailFunctionary.append(("Squad", functionary.squadProfissional ?? "-", "", ""))
        detailFunctionary.append(("Código Projeto Jira", functionary.codProjetoJira ?? "-", "PRE", functionary.pre ?? ""))
        
        detailFunctionary.append(("Tecnologia", functionary.tecnologia ?? "-", "Serviço", functionary.servico ?? "-"))
        detailFunctionary.append(("Shadow", functionary.shadow ?? "-", "", ""))
        detailFunctionary.append(("Número MAC", functionary.numeroMAC ?? "-", "", ""))
        
    }
}
