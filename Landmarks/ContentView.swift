import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            MapView()
                .frame(height: 300)
            
            ImageView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .padding(.trailing)
                    
                        
                }
                
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)

                Text("Descriptive text goes here.")
                
            }
            .padding(.leading)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
