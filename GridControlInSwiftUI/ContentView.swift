//
//  ContentView.swift
//  GridControlInSwiftUI
//
//  Created by Ramill Ibragimov on 04.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                GridCellView(systemName: "person", color: .orange)
                GridCellView(systemName: "heart", color: .red)
                    .gridCellColumns(2)
            }
            GridRow {
                GridCellView(systemName: "airplane", color: .blue)
                    .gridCellColumns(2)
                GridCellView(systemName: "gear", color: .orange)
            }
            GridRow {
                GridCellView(systemName: "app", color: .orange)
                    .gridCellColumns(3)
            }
            GridRow {
                GridCellView(systemName: "airplane", color: .orange)
                GridCellView(systemName: "gear", color: .green)
                GridCellView(systemName: "person", color: .orange)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GridCellView: View {
    let systemName: String
    let color: Color
    
    var body: some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 2))
            .backgroundStyle(color.gradient)
            .foregroundStyle(.white.shadow(.inner(radius: 1, x: 2, y: 2)))
    }
}
