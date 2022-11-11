import SwiftUI

func RandomPrompt() -> String{
    let things = ["Three people you enjoyed talking to today","Three things you are grateful for today", "Three things you think you did well today"]
    return String(things.randomElement()!)
}
struct ContentView: View {
    @State var GoodThing1: String = ""
    @State var GoodThing2: String = ""
    @State var GoodThing3: String = ""
    @State var GoodThingPrompt: String = RandomPrompt()
    
    var body: some View {
        VStack {
            
            Text("Hygge")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.mint)
                .padding()
                
            
            Text(GoodThingPrompt)
                .padding ()
            TextField("1st", text: $GoodThing1)
            // dollar signs binds values to variable
            TextField("2nd", text: $GoodThing2)
            TextField("3rd", text: $GoodThing3)
            
            Button("New Prompt"){
                GoodThingPrompt = RandomPrompt()
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
