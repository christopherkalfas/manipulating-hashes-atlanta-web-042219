require 'pry'
def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts["Freddy Mercury"].each do |name, data|
    binding.pry
    data.each do |attribute, value| 
      binding.pry 
      if attribute == :favorite_icecream_flavors
        value.each do |flavor|
          binding.pry
          if flavor == "strawberry"
            flavor[0]
          end
        end
      end
    end
  end 
            

  #remember to return your newly altered contacts hash!
  contacts
end

