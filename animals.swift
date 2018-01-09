import UIKit
class Animal{
    var name:String
    var health=100
    init(name:String){
        self.name=name
    }
    func displayHealth(){
        print(health)
    }
}
class Cat:Animal{
    override init(name:String){
        super.init(name:name)
        health=150
    }
    func growl()->Cat{
        print("Rawr!")
        return self
    }
    func run()->Cat{
        print("Running")
        health-=10
        return self
    }
}
class Cheetah:Cat{
    override init(name:String){
        super.init(name:name)
    }
    override func run()->Cheetah{
        if health<=50 {
            print("too tired to run")
            return self
        }
        print("Running Fast")
        health-=50
        return self
    }
    func sleep(){
        health+=50
        if health>200 {
            health=200
        }
    }
}
class Lion:Cat{
    override init(name:String){
        super.init(name:name)
        health=200
    }
    override func growl()->Lion{
        print("ROAR!!!! I am the King of the Jungle")
        return self
    }
    
}
var split=Cheetah(name: "Split")
split.displayHealth()
var jimbo = Lion(name:"Jimbo")
jimbo.run().run().run().run().growl()