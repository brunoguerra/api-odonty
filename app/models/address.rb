class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  validates :street, :postal_code, :neighborhood, :presence => true
end

