//
//  CurrentWeather+Row.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import SwiftUI

struct CurrentWeatherRow: View {
  private let viewModel: CurrentWeatherRowViewModel
  
  init(viewModel: CurrentWeatherRowViewModel) {
    self.viewModel = viewModel
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      MapView(coordinate: viewModel.coordinate)
        .cornerRadius(30)
        .frame(height: 300)
        .disabled(true)
      
      VStack(alignment: .leading) {
        HStack {
          Text("☀️ Temperature:")
          Text("\(viewModel.temperature)°")
            .foregroundColor(.cyan)
        }
        
        HStack {
          Text("📈 Max temperature:")
          Text("\(viewModel.maxTemperature)°")
            .foregroundColor(.cyan)
        }
        
        HStack {
          Text("📉 Min temperature:")
          Text("\(viewModel.minTemperature)°")
            .foregroundColor(.cyan)
        }
        
        HStack {
          Text("💧 Humidity:")
          Text(viewModel.humidity)
            .foregroundColor(.cyan)
        }
      }
    }
  }
}
