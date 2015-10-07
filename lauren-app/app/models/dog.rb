class Dog
  include Mongoid::Document

  has_one :human, inverse_of :human
  has_and_belongs_to_many :dogs
  embeds_one :favorite_toy

  field :name, type: String
  field :breed, type: String
  field :color, type: String
  field :age, type: Integer
end
