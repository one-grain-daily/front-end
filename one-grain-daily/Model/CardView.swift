//
//  CardView.swift
//  one-grain-daily
//
//  Created by 김주현 on 2023/08/21.
//

import Foundation
import SwiftUI

//이모지와 제목과 부제목이 있는 cardview
struct CardView: View {
    var title: String
    var value: String
    var iconName: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.black)
                .imageScale(.large)
                .padding(.horizontal)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)
                    .padding(.bottom, 3)
                
                Text(value)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 15)
            }
        }
        .frame(minHeight: 60)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
        .padding(.leading, 3)
        .padding(.leading, 3)
        .padding(.bottom, 2)
    }
}

//색상이 빨간색인 CardView
struct CardView3: View {
    var title: String
    var value: String
    var iconName: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.red)
                .imageScale(.large)
                .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 15)
                    .padding(.bottom, 3)
                
                Text(value)
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 15)
            }
        }
        .frame(minHeight: 60)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
        .padding(.leading, 3)
        .padding(.leading, 3)
        .padding(.bottom, 2)
    }
}


//이모지와 제목이 있는 cardview
struct CardView2: View {
    var value: String
    var iconName: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.black)
                .imageScale(.large)
                .padding(.horizontal)
            
            VStack(alignment: .leading) {
               
                Spacer().frame(height: 20)
                
                Text(value)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 15)
                
                Spacer().frame(height: 10)
                
            }
        }
        .frame(minHeight: 60)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 2, x: 0, y: 2)
        .padding(.leading, 3)
        .padding(.leading, 3)
        .padding(.bottom, 2)
    }
}
