//
//  CurrentWeather+View.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import SwiftUI

struct CurrentWeatherView: View {
  @ObservedObject var viewModel: CurrentWeatherViewModel

  init(viewModel: CurrentWeatherViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    List(content: content)
      .onAppear(perform: viewModel.refresh)
      .navigationBarTitle(viewModel.city)
      .listStyle(GroupedListStyle())
  }
}

private extension CurrentWeatherView {
  func content() -> some View {
    if let viewModel = viewModel.dataSource {
      return AnyView(details(for: viewModel))
    } else {
      return AnyView(loading)
    }
  }

  func details(for viewModel: CurrentWeatherRowViewModel) -> some View {
    CurrentWeatherRow(viewModel: viewModel)
  }

  var loading: some View {
    Text("Please wait, loading \(viewModel.city)'s weather...")
      .foregroundColor(.cyan)
  }
}
