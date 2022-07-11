//
//  WeeklyWeather+View.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import SwiftUI

struct WeeklyWeatherView: View {
  @ObservedObject var viewModel: WeeklyWeatherViewModel

  init(viewModel: WeeklyWeatherViewModel) {
    self.viewModel = viewModel
  }
  
  var body: some View {
    NavigationView {
      List {
        searchField

        if viewModel.dataSource.isEmpty {
          emptySection
        } else {
          cityHourlyWeatherSection
          forecastSection
        }
      }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Weather ⛅️")
    }
  }
}

private extension WeeklyWeatherView {
  var searchField: some View {
    HStack(alignment: .center) {
      TextField("Type your city", text: $viewModel.city)
    }
  }

  var forecastSection: some View {
    Section {
      ForEach(viewModel.dataSource, content: DailyWeatherRow.init(viewModel:))
    }
  }

  var cityHourlyWeatherSection: some View {
    Section {
      NavigationLink(destination: viewModel.currentWeatherView) {
        VStack(alignment: .leading) {
          Text(viewModel.city)
          Text("Weather today")
            .font(.caption)
            .foregroundColor(.cyan)
        }
      }
    }
  }

  var emptySection: some View {
    Section {
      Text("No results")
        .foregroundColor(.cyan)
    }
  }
}
