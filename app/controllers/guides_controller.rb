class GuidesController < ApplicationController
  def index
  end

  def word_list
    @book, @words = ["", ""]

    if params[:book_id].to_i != 0
      @book  = Book.find(params[:book_id])
      @words = @book.words.sample(20)
    else
      @words = Word.all.sample(20)
    end
  end
end
