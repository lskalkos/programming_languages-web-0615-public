require 'pry'

# input = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }

#   }
# }

def reformat_languages(language_styles)
  # your code here

  hash_by_languages = {}


  language_styles.each do |style, languages|
    languages.each do |language, type|

      if hash_by_languages[language]
        hash_by_languages[language][:type] = type.values.first
        hash_by_languages[language][:style] << style
      else
        hash_by_languages[language] = {
          type: "",
          style: []
        }
        hash_by_languages[language][:type] = type.values.first
        hash_by_languages[language][:style] << style
      end

    end
  end

  hash_by_languages

end

# reformat_languages(input)







