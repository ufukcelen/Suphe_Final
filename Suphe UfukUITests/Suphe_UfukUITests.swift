//
//  Suphe_UfukUITests.swift
//  Suphe UfukUITests
//
//  Created by Ufuk Celen on 8.09.2019.
//  Copyright © 2019 Ufuk Celen. All rights reserved.
//

import XCTest

class Suphe_UfukUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
  
        let app = XCUIApplication()
        app.launch()
        
       
        app/*@START_MENU_TOKEN@*/.staticTexts["Başla"]/*[[".buttons[\"Başla\"].staticTexts[\"Başla\"]",".staticTexts[\"Başla\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["?"].tap()
        app.staticTexts["When the men on the chessboard Get up and tell you where to go / Olayın asıl kahramanı kim ki?"].swipeDown()
      
      
        
                
        
        
                
                
                    
       
        
    }

    
    
    
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
