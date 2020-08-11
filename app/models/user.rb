class User < ApplicationRecord
    validates :name, length: {in:1..10}
    #presence:true , uniqueness:true , length: { maximum:8 }

    validates :age, numericality:{greater_than_or_equal_to:18}

end
