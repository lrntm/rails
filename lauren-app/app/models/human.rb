class Human
  include Mongoid::Document
  field :name, type: String
  field :numOfDogs, type: Integer
end
