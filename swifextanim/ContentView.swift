import SwiftUI

struct ContentView: View {
    @State private var animate = false
    
    var body: some View {
        VStack(spacing: 30) {
            
            // Fade in with scale
            Text("Fade In & Scale")
                .font(.title)
                .opacity(animate ? 1 : 0)
                .scaleEffect(animate ? 1 : 0.5)
                .animation(.easeInOut(duration: 1), value: animate)
            
            // Slide in from the left
            Text("Slide In from Left")
                .font(.title)
                .offset(x: animate ? 0 : -200)
                .animation(.spring(response: 1, dampingFraction: 0.5), value: animate)
            
            // Bounce effect
            Text("Bouncing Effect")
                .font(.title)
                .scaleEffect(animate ? 1 : 0.8)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5), value: animate)
            
            // 3D Rotation
            Text("3D Rotation")
                .font(.title)
                .rotation3DEffect(.degrees(animate ? 360 : 0), axis: (x: 1, y: 0, z: 0))
                .animation(.easeInOut(duration: 1), value: animate)
            
            // Bounce with shadow
            Text("Bounce with Shadow")
                .font(.title)
                .scaleEffect(animate ? 1 : 1.2)
                .shadow(color: .black.opacity(0.5), radius: animate ? 10 : 0)
                .animation(.spring(response: 0.5, dampingFraction: 0.3), value: animate)
            
            // Blur Fade-in Effect
            Text("Blur Fade In")
                .font(.title)
                .opacity(animate ? 1 : 0)
                .blur(radius: animate ? 0 : 10)
                .animation(.easeInOut(duration: 1), value: animate)
            
            // Extra Cool Effect - Wobble + Opacity
            Text("Wobble Effect")
                .font(.title)
                .rotationEffect(.degrees(animate ? -5 : 5))
                .opacity(animate ? 1 : 0)
                .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: animate)
            
            Spacer()
            
            // Button to Trigger Animations
            Button("Animate") {
                animate.toggle()
            }
            .font(.title2)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
