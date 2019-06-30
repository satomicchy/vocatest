#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require File.expand_path('../../config/environment.rb', __FILE__)
require 'csv'

ActiveRecord::Base.transaction do
  book_name = ARGF.filename.split('/').last[0..2]
  book = Book.where("title like ?", "%#{book_name}%").first

  CSV.parse(ARGF.read) do |cols|
    (order_number, character, meaning) = cols
    word = Word.find_or_initialize_by(character: character, order_number: order_number)
    word.meaning = meaning
    word.book_id = book.id
    unless word.save
      p word
    end
  end
end
