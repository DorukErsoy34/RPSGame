import SwiftUI
struct RPSGame{

let choises=["👊","✋","✌️"]

func determinewinner(userChoise: String, computerChoise: String)-> String{
    if computerChoise == userChoise{
        return "tie"}
    else if (userChoise == "👊" && computerChoise == ✌️)||
            (userChoise == "✌️" && computerChoise == ✋)||
            (userChoise == "✋" && computerChoise == 👊){
        return "you win!"
    }
    else {
        return"you Lose"
    }
}
func RandomComputerChoise()->String{
    return choises.randomElement()!
}

}
