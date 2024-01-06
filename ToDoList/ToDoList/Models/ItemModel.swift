//
//  ItemModel.swift
//  ToDoList
//
//  Created by Shushan Barseghyan on 04.01.24.
//

import Foundation

struct ItemModel: Identifiable, Codable {
  let id: String
  let title: String
  let isComleted: Bool
  
  init(id: String = UUID().uuidString, title: String, isComleted: Bool) {
    self.id = id
    self.title = title
    self.isComleted = isComleted
  }
  
  func updateCompletion() -> ItemModel {
    return ItemModel(id: id, title: title, isComleted: !isComleted)
  }
}
