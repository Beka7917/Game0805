class HeroOne : Heroes {
    
     override func Ultimmate(ability: String) -> String {
         print("Hero used ability: Charm")

        return ability
    }
    
    
    func hp() -> Int {
        return getHealth()
    }
    
    func damage() -> Int {
        return getDamage()
    }
    func call() -> String {
        return getName()
    }
}
  
