//
//  foodContentDetailsView.swift
//  SwiftUI_First_Project
//
//  Created by Md Murad Hossain on 1/2/23.
//

import SwiftUI

struct foodContentDetailsView: View {
    var itemImageName: String
    var itemName: String
    var itemType: String = "The description of this food is given below:"

    var body: some View {
        VStack(spacing: 50) {
            ScrollView {
                Image(itemImageName.lowercased())
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 3)
                    }
                    .shadow(radius: 10)
                Text(itemName)
                    .font(.title)
                    .bold()
                Text(itemType)
                    .font(.headline)
                    .foregroundColor(.red)
                Text("It's a \(itemImageName.lowercased()) that's good for you. There is no alternative to eating \(itemImageName.lowercased())s every day. Which contains a lot of vitamins.Foods that are essential for our survival.To know more about this particular \(itemImageName.lowercased()), Please go to google and search for it.")
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.all)
                Spacer()
            }
            .padding()
        }
    }
}

struct foodContentDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        foodContentDetailsView(itemImageName: "tomato", itemName: "Tomato")
    }
}
