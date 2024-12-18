import SwiftUI

struct ContentView: View {
    @State private var userChoise: String = ""
    @State private var computerChoise : String = ""
    @State private var result: String = ""
    @State private var showResult = false
    var body: some View {
        VStack {

            Text("Rock Paper Scissors Game")
            if!showResult{
                text("select one")
            }
            HStack{
                ForEach(game.choices, id: \.self) { choice in
                    Button(action: { 
                        playGame(userChoice: choice)
                    }) {
                        
            }
                    Else {
                        VStack{
                            text("senin secimin:\(userChoise)")
                             text("bilgisayar secimi:\(computerChoise)")
                             text("sonuc:\(result)")
                        }
                    }
                    Button (action:{
                        resetGame()
                    }
                            {
                        Text("tekrar oyna")
                    }
                            func playGame(userChoise: String)
                            self. userChoise = userChoise
                            self.computerChoise = game.randomComputerChoise()
                            self.result = game.determineWinner(userChoise: userChoise, computerChoise:computerChoise)
                            self.showResult = true
                            
        }
                            func resetGame(){
                        userChoise = ""
                        computerChoise =""
                        result = ""
                        showResult = false
                    }
                            struct ContentView_Previews:PreviewProvider{
                        static var previews: some View{
                            contentview()
                        }
                    }
    }
}
