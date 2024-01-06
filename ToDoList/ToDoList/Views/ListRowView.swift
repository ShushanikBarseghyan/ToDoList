//
//  ListRowView.swift
//  ToDoList
//
//  Created by Shushan Barseghyan on 04.01.24.
//

import SwiftUI


struct ListRowView: View {
  let item: ItemModel

  var body: some View {
    HStack {
      Image(systemName: item.isComleted ? "checkmark.circle" : "circle")
        .foregroundColor(item.isComleted ? .green : .red)
      Text(item.title)
      Spacer()
    }
    .font(.title2)
    .padding(.vertical, 8)
  }
}

var item1 = ItemModel(title: "test Item", isComleted: false)
var item2 = ItemModel(title: "test Item 2", isComleted: true)

#Preview {
  Group {
    ListRowView(item: item1)
    ListRowView(item: item2)
  }
  .previewLayout(.sizeThatFits)
}
