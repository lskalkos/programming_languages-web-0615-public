
def reformat_languages(language_styles)
  # your code here


  language_styles.each_with_object({}) do |(style, languages), hash_by_languages|
    languages.each do |language, type|

      if hash_by_languages[language]
        hash_by_languages[language][:type] = type.values.first
        hash_by_languages[language][:style] << style
      else
        hash_by_languages[language] = Hash.new([])
        hash_by_languages[language][:type] = type.values.first
        hash_by_languages[language][:style] << style
      end

    end
  end


end







