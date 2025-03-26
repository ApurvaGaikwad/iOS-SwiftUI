//
//  InfoView.swift
//  SwiftUIProject2
//
//  Created by Apurva Gaikwad on 23/03/25.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String

    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "91 4324324333", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
