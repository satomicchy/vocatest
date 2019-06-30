class Word < ApplicationRecord
  has_many :flashcards
  belongs_to :book
end
