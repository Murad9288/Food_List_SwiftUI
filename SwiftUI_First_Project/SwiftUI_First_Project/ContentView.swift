//
//  ContentView.swift
//  SwiftUI_First_Project
//
//  Created by Md Murad Hossain on 1/2/23.
//

import SwiftUI

struct ContentView: View {
    var foodList: [String] = ["Apple","Fish","Orange","Meat","Mango","Lemon","Candy","Banana","Shrimp","Pineapple","Dates","Lichi","Tomato"]
    
    var body: some View {
            NavigationView {
                List(foodList, id: \.self) { food in
                    ZStack(alignment: .leading) {
                        NavigationLink {
                            foodContentDetailsView(itemImageName: food, itemName: food)
                        } label: {
                            EmptyView()
                        }
                        .opacity(0)
                        foodCellView(objectTitle: food)
                    }
                }
                .navigationTitle("FOOD LIST")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
