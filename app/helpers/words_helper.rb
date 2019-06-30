module WordsHelper
  def search_image_url(word)
    "https://duckduckgo.com/?q=#{searc_character(word)}&t=h_&iax=images&ia=images"
  end

  def search_weblio_url(word)
    "https://ejje.weblio.jp/content/#{searc_character(word)}"
  end

  def search_alc_url(word)
    "https://eow.alc.co.jp/search?q=#{searc_character(word)}"
  end

  def searc_character(word)
    org_chara    = word.character.split(' ')
    search_chara = if org_chara.count == 1
                     org_chara.first
                   else
                     org_chara.join('+')
                   end
  end
end
