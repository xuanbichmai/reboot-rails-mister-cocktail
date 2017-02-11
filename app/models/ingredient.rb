class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
end

# rspec ./spec/models/ingredient_spec.rb:10 # Ingredient has a name
# rspec ./spec/models/ingredient_spec.rb:15 # Ingredient name cannot be blank
# rspec ./spec/models/ingredient_spec.rb:22 # Ingredient name is unique
# rspec ./spec/models/ingredient_spec.rb:28 # Ingredient has many doses
# rspec ./spec/models/ingredient_spec.rb:34 # Ingredient should not be able to destroy self if has dose children
