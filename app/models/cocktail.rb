class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end


  # Cocktail has a name
  # rspec ./spec/models/cocktail_spec.rb:15 # Cocktail name cannot be blank
  # rspec ./spec/models/cocktail_spec.rb:22 # Cocktail name is unique
  # rspec ./spec/models/cocktail_spec.rb:28 # Cocktail has many doses
  # rspec ./spec/models/cocktail_spec.rb:34 # Cocktail should destroy child doses when destroying self
  # rspec ./spec/models/cocktail_spec.rb:41 # Cocktail has many ingredients
