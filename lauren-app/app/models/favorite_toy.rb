class FavoriteToy
  include Mongoid::Document

  embedded_in :dog

  field :name, type: String
  field :type, type: String
end
