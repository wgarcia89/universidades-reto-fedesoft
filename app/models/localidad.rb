class Localidad < ApplicationRecord
  has_many :universidades
  has_many :retos
end
