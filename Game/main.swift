var heroOne = HeroOne()
var heroTwo = HeroTwo()
var heroThree = HeroThree()
var boss = Boss()


heroOne.setName(name: "Warrior")
heroOne.setHealth(health: 140)
heroOne.setDamage(damage: 150)

heroTwo.setName(name: "Magic")
heroTwo.setHealth(health: 200)
heroTwo.setDamage(damage: 120)


heroThree.setName(name: "Archer")
heroTwo.setHealth(health: 140)
heroThree.setDamage(damage: 100)


boss.setName(name: "Dragon")
boss.setHealth(health: 300)
boss.setDamage(damage: 50)



var bossDamage = boss.getDamage()
var bossHealth = boss.getHealth()
var bossNAme = boss.getName()

var heroesDamage : [Int] = [heroOne.getDamage(),heroTwo.getDamage(),heroThree.getDamage()]
var heroesHealth : [Int] = [heroOne.getHealth(),heroTwo.getHealth(), heroThree.getHealth() ]

func revive() {
    for (index , _) in heroesHealth.enumerated() {
        if heroesHealth[index] <= 0 && heroesHealth[2] <= 0{
                heroesHealth[index] = 0

        }
    }
}
func bossHit(){
for (index ,_)  in heroesHealth.enumerated() {
    
    heroesHealth[index] = heroesHealth[index] - bossDamage
    if heroesHealth[index] <= 0 {
        heroesHealth[index] = 0
        
      }
   }
}
func heroesHit(){
    print("Heroes  attacks!")
    heroOne.Ultimmate(ability: "Warrior used ability : Crit Damage")
    heroTwo.Ultimmate(ability: "Mage two used ability : Charm")
    heroThree.Ultimmate(ability: "Archer  three used ability : Arrow44")
    
    
    for (index,_) in heroesDamage.enumerated() {
    
        bossHealth = bossHealth - heroesDamage[index]
        if bossHealth <= 0{
            bossHealth = 0

      }
       
   }
}

        while true {
        
        if heroesHealth[0]  <= 0 && heroesHealth[1] <= 0 && (heroesHealth[2] <= 0){
            print("Босс победил, game over!")
            break
        } else if bossHealth <= 0{
            print("Герои победили, game over!")
            break
    }
    round()

}

func round() {
    print("-------------------")
    bossHit()
    print(  "Boss атакует!")
    print("-------------------")
    print("Здоровье героев: " + "\(heroesHealth)")
    print("-------------------")
    revive()
    heroesHit()
    print("Здоровье босса: " + "\(bossHealth)")
    print("-------------------")
    
}



var iphone = Iphone(name: "IphoneX", price: 30000, color: "Red")
var samsung = Samsung(name: "Samsung", price: 10000, color: "Black")
var redmi  = Redmi (name: "Redmi9", price: 8000, color: "White")
var Phones:[Phone] = [iphone,samsung,redmi]

for mobilePhone in Phones {
  let info =   mobilePhone.getPhoneInfo()
 print(info)
    
    
    
}


 let iphonecharecter = iphone.makeExternacharacteristics(characteristics: "TouchScreen")
let samsungcharecter =    samsung.makeExternacharacteristics(characteristics: "Sckreen Scaling")
 let redmicharecter =    redmi.makeExternacharacteristics(characteristics: "ultra wide camera")

print(iphonecharecter)
print(samsungcharecter)
print(redmicharecter)



let iphonememory = iphone.makeTechinalspecifications(memory: 64)
let samsungmemory = samsung.makeTechinalspecifications(memory: 32)
let redmimemory = redmi.makeTechinalspecifications(memory: 16)

print(iphonememory)
print(samsungmemory)
print(redmimemory)
