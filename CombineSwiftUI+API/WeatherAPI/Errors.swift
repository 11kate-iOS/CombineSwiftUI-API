//
//  Errors.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import Foundation

enum WeatherError: Error {
  case parsing(description: String)
  case network(description: String)
}
