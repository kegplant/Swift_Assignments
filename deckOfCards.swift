import UIKit

enum Color{
    case Red //or case red,blue,green
    case Blue
    case Green
    static let allValues=[Red,Blue,Green] // switch case, iterate w/ allValues, invoking
}
struct Card{
    let Color: Color
    let Roll: Int
    init(Color:Color){
        self.Color=Color
        let rando=Int(arc4random()%2)
        switch Color{
        case .Red: Roll=1+rando
        case .Blue: Roll=3+rando
        case .Green: Roll=5+rando
        }
//        print(Roll)
    }
}
var card1=Card(Color:Color.Green)
class Deck{
    var cards:[Card]=[]
    init(){
        for color in Color.allValues{
            for _ in 0...9{
                cards.append(Card(Color:color))
            }
        }
    }
    func deal()->Card{
        return cards.remove(at:(cards.count-1))
    }
    func isEmpty()->Bool{
        return cards.count==0
    }
    func shuffle(){
        for i in 0..<cards.count{
            let randomIndex=Int(arc4random_uniform(UInt32(cards.count)));
            let temp=cards[i];
            cards[i]=cards[randomIndex]
            cards[randomIndex]=temp;
        }
    }
}
class Player{
    let name:String=""
    var hand:[Card]=[]
    func draw(deck:Deck)->Deck{ //different from how I used to do it
        hand.append(deck.deal())
        return deck
    }
    func rollDice()->Int{
        return Int(arc4random()%6+1)
    }
    func matchingCards(color:Color,roll:Int)->Int{
        var count:Int=0;
        for card in hand{
            if card.Color==color && card.Roll==roll {
                count+=1
            }
        }
        return count
    }
}
var deckOfCards=Deck();
print(deckOfCards.cards.count)