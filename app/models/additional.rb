class Additional < ApplicationRecord
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, if: :email
end
