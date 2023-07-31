//
//  BookViewModel.swift
//  BokBok
//
//  Created by Eric Vargas on 7/31/23.
//

import Foundation

@MainActor
class BookViewModel: ObservableObject {
  @Published var items: [Item] = []
  
  func getBestSellerBooks() async {
    guard let data = try? await GBookService().getBestSellerBooks() else {
      print("[BookViewModel] getBestSellerBooks | Error fetching")
      return
    }
    
    self.items = data
  }
}
