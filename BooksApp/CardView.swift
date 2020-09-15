//
//  CardView.swift
//  BooksApp
//
//  Created by Mihai Cîra on 14/09/2020.
//  Copyright © 2020 Mihai Cîra. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                ForEach(0..<5){_ in
                    CardLabel(imageName: .constant("book1"), bookTitle: .constant("Lorem Ipsum"), authorName: .constant("Mihai"))
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
