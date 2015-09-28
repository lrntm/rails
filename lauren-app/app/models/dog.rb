class Dog
  include Mongoid::Document
  field :name, type: String
  field :breed, type: String
  field :color, type: String
  field :age, type: Integer
end
