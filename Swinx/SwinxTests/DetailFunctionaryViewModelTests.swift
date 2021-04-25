//
//  DetailFunctionaryViewModelTests.swift
//  SwinxTests
//
//  Created by Pedro Spim on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import XCTest
@testable import Swinx

class DetailFunctionaryViewModelTests: XCTestCase {
    
    var sut = DetailFunctionaryViewModel(functionary: Funcionario(nome: "", codProjetoJira: "", pre: "", funcional: "", racf: "", email: "", squadProfissional: "", cargo: "", dataInicio: "", dataFim: "", status: "", cpf: "", rg: "", matriculaGeco: "", numeroMAC: "", celularCorporativo: "", telefone: "", emailCliente: "", aniversario: "", shadow: "", tecnologia: "", pontoFocal: "", tl: "", pl: "", gerente: "", servico: ""))

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        sut.getInfosFunctionary()
        XCTAssert(sut.functionary?.codProjetoJira == "")
        XCTAssert(sut.functionary?.aniversario == "")
        XCTAssert(sut.functionary?.telefone == "")
        XCTAssert(sut.functionary?.gerente == "")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
