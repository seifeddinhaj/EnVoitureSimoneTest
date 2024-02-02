class PotatoPrice < ApplicationRecord
  validates :time, presence: true
  validates :value, presence: true
end
