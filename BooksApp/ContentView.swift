//
//  ContentView.swift
//  BooksApp
//
//  Created by Mihai Cîra on 14/09/2020.
//  Copyright © 2020 Mihai Cîra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color("background").edgesIgnoringSafeArea(.all)
                
                VStack{
                    SearchBar(text: $searchText)
                        .padding()
                    List(Book.books.filter({searchText.isEmpty ? true : ($0.authorName.uppercased().contains(searchText.uppercased()) || $0.bookName.uppercased().contains(searchText.uppercased()))})){
                        
                        book in
                        
                        NavigationLink(destination: BookDetailsView(bookobj: .constant(book))){
                            CardLabel(imageName: .constant(book.imageName), bookTitle: .constant(book.bookName), authorName: .constant(book.authorName), description: .constant(book.description))
                                .padding()
                        }.buttonStyle(PlainButtonStyle())
                        
                    }
                }.navigationBarTitle(Text("Books"),displayMode: .inline)
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
