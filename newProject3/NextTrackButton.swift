//
//  NextTrackButton.swift
//  newProject3
//
//  Created by Адам Дотмерзаев on 05.12.2024.
//

import SwiftUI

struct NextTrackButton: View {
    @State private var isLeftActive = true
    
    var body: some View {
        Button {
            
        } label: {
            HStack(spacing: -6) { // Перекрытие стрелок
                // Левая стрелка
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    .opacity(isLeftActive ? 1 : 0) // Плавное исчезновение
                    .offset(x: isLeftActive ? 0 : 30) // Движение вперед
                    .animation(.easeInOut(duration: 0.5), value: isLeftActive)

                // Правая стрелка
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: isLeftActive ? 50 : 0, height: isLeftActive ? 50 : 0)
                    .foregroundColor(.blue.opacity(0.5))
                    .opacity(isLeftActive ? 1 : 0) // Плавное исчезновение
                    .animation(.easeInOut(duration: 0.5), value: isLeftActive)
            }
        }
    }
}

#Preview {
    NextTrackButton()
}
