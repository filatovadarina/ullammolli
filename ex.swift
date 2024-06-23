struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tap Me")
                .onTapGesture {
                    print("Text tapped")
                }
            
            Image(systemName: "heart.fill")
                .onTapGesture {
                    print("Heart image tapped")
                }
        }
    }
}
