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
        
        detailFunctionary.append(("Data Inicio", functionaryData?.dataInicio ?? "-", "Data Fim", functionaryData?.dataFim ?? "-"))
        detailFunctionary.append(("CPF", functionaryData?.cpf ?? "-", "", ""))
        detailFunctionary.append(("RG", functionaryData?.rg ?? "-", "", ""))
        detailFunctionary.append(("RACF", functionaryData?.racf ?? "-", "Funcional", functionaryData?.funcional ?? "-"))
        
        detailFunctionary.append(("Cargo", functionaryData?.cargo ?? "-", "", ""))
        detailFunctionary.append(("E-mail", functionaryData?.email ?? "-", "", ""))
        detailFunctionary.append(("E-mail Cliente", functionaryData?.emailCliente ?? "-", "", ""))
        detailFunctionary.append(("Número MAC", functionaryData?.numeroMAC ?? "-", "", ""))
        detailFunctionary.append(("Aniversário", functionaryData?.aniversario ?? "-", "", ""))
        detailFunctionary.append(("Aniversário", functionaryData?.aniversario ?? "-", "", ""))
    }
}
