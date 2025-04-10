//
//  ContentView.swift
//  HarmonyInRelation
//
//  Created by Lilia Chechina on 10.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1.0 // Начальный масштаб
    @State private var opacity: Double = 1.0 // Начальная прозрачность
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundStyle(.orange)
                .scaleEffect(scale)  // масштаб
                .opacity(opacity)  // прозрачность
            // onAppear – for animation
                .scaleEffect(5) // увеличиваем масштаб
                .onAppear {
                    withAnimation(
                        Animation.easeInOut(duration: 1.5)
                        /*
                         тип анимации: анимация начинаетсяя медленно, ускоряться в середине и затем замедлятся в конце. Это делает переход более плавным и естественным, так как анимация не будет иметь резких изменений в скорости.
                         */
                            .repeatForever(autoreverses: true) // 1) бесконечно повтооряется 2) будет автоматически возвращаться к начальной точке после цикла
                    ) {
                        scale = 1.2 // Увеличиваем размер на 20%
                        opacity = 0.7 // Уменьшаем прозрачность до 70%
                    }
                }
            
            Text("Сохраните любовь")
                .bold()
                .font(.system(size: 30))
                .padding(.top, 55)
        }
        .padding() // отсуп для VStack
    }
}

#Preview {
    ContentView()
}
