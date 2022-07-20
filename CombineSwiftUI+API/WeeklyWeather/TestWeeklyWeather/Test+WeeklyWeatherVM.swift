//
//  Test+WeeklyWeatherVM.swift
//  CombineSwiftUI+APITests
//
//  Created by Kateryna Vasilieva on 18.07.2022.
//

@testable import CombineSwiftUI_API
import XCTest

class WeeklyWeatherViewModelTests: XCTestCase {
    var WWViewModel: WeeklyWeatherViewModel!
    private let fetcher: WeatherFetchable
    override func setUp() {
        super.setUp()
        WWViewModel = WeeklyWeatherViewModel(weatherFetcher: fetcher)
    }
    override func tearDown() {
        WWViewModel = nil
        super.tearDown()
    }
}
