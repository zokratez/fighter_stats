class FighterStats::Fighter
  attr_accessor :name, :weight, :availability, :url
  
  def self.today
    #return many instances of Fighters 
     puts  <<-DOC.gsub /^\s*/, ''
    1. Lightweight - fighter(khabib) - stats  
    2. Heavyweight - fighter(cormier) - stats
    DOC
    
    fighter_1 = self.new
    fighter_1.name = "fighter(khabib)"
    fighter_1.weight = "Lightweight"
    fighter_1.availability = true
    fighter_1.url = "http://www.ufc.com/fighter/khabib-Nurmagomedov"
    
    fighter_2 = self.new
    fighter_2.name = "fighter(cormier)"
    fighter_2.weight = "Heavyweight"
    fighter_2.availability = true
    fighter_2.url = "http://www.ufc.com/fighter/daniel-Cormier"
    
    [fighter_1, fighter_2]
  end
  
end
  