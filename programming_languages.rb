# require 'pry'

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

def reformat_languages(languages)
  # your code here

  hash_by_languages = {}

  languages.each do |style, languages|
    languages.keys.each do |language|
      hash_by_languages[language] = {
        type: "",
        style: []
      }
    end
  end

  languages.each do |style, languages|
    languages.each do |language, type|
      hash_by_languages[language][:type] = type.values.first
      hash_by_languages[language][:style] << style
    end
  end

  hash_by_languages

end

# reformat_languages(input)







