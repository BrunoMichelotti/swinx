//
//  DetailRTViewModel.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import Foundation

class DetailRTViewModel {
    var rt: RTData?
    
    var nameRT: String?
    var descriptionRT: String?
    var coordinators: String?
    var squad: [Squad]?
    
    init(id: Int, rt: RTData?) {
        self.rt = rt
        getInfosRT(id: id)
    }
    
    func getInfosRT(id: Int) {
        guard let rtData = rt?.data else { return }
        
        self.nameRT = rtData.rts[id].nome
        self.descriptionRT = rtData.rts[id].descricaoRt
        self.coordinators = rtData.rts[id].cordenador
        self.squad = rtData.rts[id].squad
    }
}
