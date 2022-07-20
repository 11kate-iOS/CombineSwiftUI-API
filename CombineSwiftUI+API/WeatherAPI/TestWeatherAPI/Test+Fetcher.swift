//
//  Test+Fetcher.swift
//  CombineSwiftUI+APITests
//
//  Created by Kateryna Vasilieva on 20.07.2022.
//

@testable import CombineSwiftUI_API
import XCTest

class WeatherFetcherTest: XCTestCase {
    var WFetcher: WeatherFetcher!
    override func setUp() {
        super.setUp()
        WFetcher = WeatherFetcher()
    }
    override func tearDown() {
        WFetcher = nil
        super.tearDown()
    }
}
