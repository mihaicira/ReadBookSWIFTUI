//
//  CardLabel.swift
//  BooksApp
//
//  Created by Mihai Cîra on 14/09/2020.
//  Copyright © 2020 Mihai Cîra. All rights reserved.
//

import SwiftUI

struct CardLabel: View {
    @Binding var imageName: String
    @Binding var bookTitle: String
    @Binding var authorName: String
    @Binding var description: String
    
    var body: some View {
        ZStack{
            HStack{
                Image(imageName).resizable()
                    .frame(width: 90, height: 90)
                VStack(alignment: .leading,spacing: 10){
                    Text(bookTitle)
                        .italic()
                        .font(.headline)
                    Text(authorName)
                        .italic()
                }.padding()
                Spacer()
            }.padding()
                .frame(width: 350, height:120)
                .background(Color("Mihai"))
                .cornerRadius(20)
                .shadow(color: .gray, radius: 3, x: 10, y: 10)
        }
    }
    
}


struct CardLabel_Previews: PreviewProvider {
    static var previews: some View {
        CardLabel(imageName: .constant("book1"), bookTitle: .constant("Book whatever name"), authorName: .constant("Mihai"), description: .constant("Lorem ipsum dolor sit amet"))
    }
}
