class Human
  include Mongoid::Document

  has_and_belongs_to_many :dogs, inverse_of: :dogs

  field :name, type: String
  field :numOfDogs, type: Integer
end