//
//  Test+CurrentWeatherVM.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 20.07.2022.
//

@testable import CombineSwiftUI_API
import XCTest

class CurrentWeatherViewModelTest: XCTestCase {
    var CWViewModel: CurrentWeatherViewModel!
    override func setUp() {
        super.setUp()
        CWViewModel = CurrentWeatherViewModel(city: "Kyiv", weatherFetcher: <#WeatherFetchable#>)
    }
    override func tearDown() {
        CWViewModel = nil
        super.tearDown()
    }
}


//CurrentWeatherViewModel
