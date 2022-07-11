//
//  Date.swift
//  CombineSwiftUI+API
//
//  Created by Kateryna Vasilieva on 11.07.2022.
//

import Foundation

let dayFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateFormat = "dd"
  return formatter
}()

let monthFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateFormat = "MMMM"
  return formatter
}()
