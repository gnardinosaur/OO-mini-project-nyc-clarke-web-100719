class Allergy #join model between User & Ingredient 

    attr_accessor :user, :ingredient, :intensity

    @@all = []

    def initialize(user, ingredient, intensity)
        @user = user
        @ingredient = ingredient
        @intensity = intensity
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_allergy_by_user_and_ingredient(user, ingredient)
        all.find {|allergy_instance| allergy_instance.user == user && allergy_instance.ingredient == ingredient}
    end

    def self.find_allergen(ingredient) #iterate through all instances of Allergy and return ingredeint that matches argument passed in 
       all.find {|allergy_instance| allergy_instance.ingredient == ingredient} 
    end

end