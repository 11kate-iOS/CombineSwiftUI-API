//
//  DailyWeather+Row.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import SwiftUI

struct DailyWeatherRow: View {
  private let viewModel: DailyWeatherRowViewModel
  
  init(viewModel: DailyWeatherRowViewModel) {
    self.viewModel = viewModel
  }
  
  var body: some View {
    HStack {
      VStack {
        Text("\(viewModel.day)")
              .padding()
              .background(.cyan)
              .clipShape(Capsule())
              .foregroundColor(.white)
              .font(.headline)
        Text("\(viewModel.month)")
      }
      
      VStack(alignment: .leading) {
        Text("\(viewModel.title)")
          .font(.body)
        Text("\(viewModel.fullDescription)")
          .font(.footnote)
      }
        .padding(.leading, 10)

      Spacer()

      Text("\(viewModel.temperature)°")
        .font(.title)
        .foregroundColor(.cyan)
    }
  }
}
