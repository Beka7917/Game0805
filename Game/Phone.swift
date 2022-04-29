class Phone{
    
    
    var name:String
    var price:Int
    var color:String
    init(name:String,price:Int,color:String){
        self.name = name
        self.price = price
        self.color = color
        
        
        
        
    }
    func getPhoneInfo() -> String {
       return "\(name),\(price),\(color)"
        
        
    }
    
}
