class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end

# rspec ./spec/models/dose_spec.rb:24 # Dose has a description
# rspec ./spec/models/dose_spec.rb:29 # Dose description cannot be blank
# rspec ./spec/models/dose_spec.rb:34 # Dose belongs to a cocktail
# rspec ./spec/models/dose_spec.rb:39 # Dose belongs to an ingredient
# rspec ./spec/models/dose_spec.rb:44 # Dose cocktail cannot be blank
# rspec ./spec/models/dose_spec.rb:51 # Dose ingredient cannot be blank
# rspec ./spec/models/dose_spec.rb:58 # Dose is unique for a given cocktail/ingredient couple
