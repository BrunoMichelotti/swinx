//
//  FunctionaryViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class FunctionaryViewMode {
    
    var functionaries : Functionary?
    
    
    func fetchFunctionary(){
        if let data = JSONDecoderAssist.readLocalFile(forName: "Functionary"){
            do{
                functionaries =  try JSONDecoderAssist.parse(type: Functionary.self, jsonData: data)
            }catch{
                print("deu erro")
            }
            
        }
    }

}



