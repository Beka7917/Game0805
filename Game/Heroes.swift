class Heroes : Ability {
    var ability: String = ""
    
    func Ultimmate(ability: String) -> String {
        return ability
    }
    
    
   private var health : Int = 0
   private var damage : Int = 0
   private var name : String = ""
   
    
    
    func setName(name : String) {
        self.name = name
    }
    func getName() -> String{
        return name
    }
    func setHealth(health: Int)  {
        self.health = health
    }
    func getHealth() -> Int {
        return health
    }
    func setDamage(damage:Int) {
        self.damage = damage
    }
    func getDamage() ->Int{
        return damage
        
    }
 
}

