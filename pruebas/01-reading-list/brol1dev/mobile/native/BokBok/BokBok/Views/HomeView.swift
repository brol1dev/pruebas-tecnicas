//
//  HomeView.swift
//  BokBok
//
//  Created by Eric Vargas on 7/29/23.
//

import SwiftUI

struct HomeView: View {
  @StateObject var bookModel = BookViewModel()
  
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      Text("Best sellers")
        .font(.title2.weight(.semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(alignment: .top) {
          Image("book1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 200)
            .padding(.leading, 20)
          
          Image("book1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 200)
          
          Image("book1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 200)
          
          Image("book1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 200)
        }
      }
      
      List{
        ForEach(bookModel.items){ item in
          HStack{
            Text("\(item.volumeInfo.title)")
          }
        }
      }
      .task {
        await bookModel.getBestSellerBooks()
      }
    }
    .frame(maxWidth: .infinity)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
