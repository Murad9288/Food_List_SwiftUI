//
//  foodCellView.swift
//  SwiftUI_First_Project
//
//  Created by Md Murad Hossain on 1/2/23.
//

import SwiftUI

struct foodCellView: View {
    let objectTitle: String
      
      var body: some View {
          HStack {
              Image(objectTitle.lowercased())
                  .resizable()
                  .frame(width: 80, height: 80)
                  .clipShape(Circle())
                  .overlay {
                      Circle().stroke(.white, lineWidth: 4)
                  }
                  .shadow(radius: 7)
              VStack(alignment: .leading) {
                  Text(objectTitle)
                      .font(.headline)
                      .bold()
                  Text("It is the \(objectTitle.lowercased()) that we almost eat.")
                      .font(.caption)
              }
          }
      }
  }

  struct CellView_Previews: PreviewProvider {
      static var previews: some View {
          foodCellView(objectTitle: "Title")
      }
  }
