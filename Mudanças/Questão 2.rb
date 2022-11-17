require 'yaml'

inputs = [
{ "name": 'Maria Neusa de Aparecida', "cpf": '97905796671',
"state": 'Sao Paulo', "value": '1234' },
{ "name": 'Ricardo Fontes', "cpf": '44010762900',
"state": 'Rio Grande do Sul', "value": '567' }
]
FILE_NAME = 'format-1.yaml'
def solution(inputs)
    keys = YAML.load_file(FILE_NAME).keys
    inputs.each do |input|
      output = ""
      keys.each do |key| 
        output << format_word(input[key.to_sym], file_properties(key))
      end
      p output
    end
end

def format_word(word, properties)
  return transform_word(word, properties) if word_length(word, properties["length"])
  format(word, properties["length"])
end

def format(word, length)
  word[0, length]
end

def word_length(word, length)
  word.size < length
end

def transform_word(word, properties)
  types = {
    right: word.rjust(properties["length"], character_types(properties["padding"])),
    left: word.ljust(properties["length"], character_types(properties["padding"]))
  }
  types[properties["align"].to_sym] 
end

def character_types(type)
  types = {
    spaces: " ",
    zeroes: "0"
  }
  types[type.to_sym]
end

def file_properties(key)
  YAML.load_file(FILE_NAME)[key]
end
solution(inputs)