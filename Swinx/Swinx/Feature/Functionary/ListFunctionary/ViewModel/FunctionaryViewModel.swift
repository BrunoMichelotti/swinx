//
//  FunctionaryViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class FunctionaryViewModel {
    
    var functionaries: Functionary?
    var functionariesArray: [Funcionario] = []
    
    
    func fetchFunctionary() {
        if let data = JSONDecoderAssist.readLocalFile(forName: "Functionary") {
            do {
                functionaries =  try JSONDecoderAssist.parse(type: Functionary.self, jsonData: data)
            }catch {
                print("erro")
            }
            
        }
    }
    
    func fechtFunctionaryFilter(filter : String){
        functionariesArray = []
        guard let functionaries = functionaries?.data?.funcionarios else {return}
        for funcionary in functionaries{
            if let nome = funcionary.nome, nome.uppercased().contains(filter.uppercased()){
                functionariesArray.append(funcionary)
            }
            
        }
    }
    
}



