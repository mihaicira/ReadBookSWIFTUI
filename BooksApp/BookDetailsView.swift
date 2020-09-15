//
//  BookView.swift
//  BooksApp
//
//  Created by Mihai Cîra on 14/09/2020.
//  Copyright © 2020 Mihai Cîra. All rights reserved.
//

import SwiftUI

struct BookDetailsView: View {
    @Binding var bookobj: Book
    var body: some View {
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    Image(bookobj.imageName).resizable()
                        .frame(width:300,height:300)
                    Text("Author: \(bookobj.authorName)")
                        .font(.headline)
                }.padding(.top,30)
                
                VStack(alignment: .leading,spacing: 30){
                    Divider()
                        .padding(.horizontal,5)
                    Text("Description:")
                        .font(.headline)
                        
                    Text("\(bookobj.description)")
                        
                    
                }.padding(30)
            }
            .navigationBarTitle(Text("\(bookobj.bookName)"),displayMode: .inline)
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(bookobj: .constant(Book.books[5]))
    }
}
