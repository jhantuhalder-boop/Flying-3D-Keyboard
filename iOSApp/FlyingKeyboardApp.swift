
import SwiftUI

@main
struct FlyingKeyboardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("✨ Super 3D Flying Keyboard")
                .font(.title2)
                .bold()

            Text("English • हिंदी • বাংলা")
                .font(.headline)

            Text("Enable your keyboard in iPhone Settings")
                .multilineTextAlignment(.center)

            Text("Settings → General → Keyboard → Keyboards")
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
  
