//
//  GBooksService.swift
//  BokBok
//
//  Created by Eric Vargas on 7/31/23.
//

import Foundation

enum GBookError: Error {
  case generic
}

struct GBookService {
  func getBestSellerBooks() async throws -> [Item] {
    guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=best_sellers") else {
      throw GBookError.generic
    }
    print("[GBookService] getBestSellerBooks | url: \(url)")
    
    let (data, _) = try await URLSession.shared.data(from: url)
    print("[GBookService] getBestSellerBooks | data: \(data)")
    
    let result = try JSONDecoder().decode(BooksResponse.self, from: data)
    print("[GBookService] getBestSellerBooks | result: \(result)")
    
    return result.items
  }
  
}
