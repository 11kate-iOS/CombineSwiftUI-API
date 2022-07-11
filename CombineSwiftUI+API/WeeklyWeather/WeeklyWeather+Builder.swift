//
//  WeeklyWeather+Builder.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import SwiftUI

enum WeeklyWeatherBuilder {
  static func makeCurrentWeatherView(
    withCity city: String,
    weatherFetcher: WeatherFetchable
  ) -> some View {
    let viewModel = CurrentWeatherViewModel(
      city: city,
      weatherFetcher: weatherFetcher)
    return CurrentWeatherView(viewModel: viewModel)
  }
}
