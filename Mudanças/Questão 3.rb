require "yaml"

input = [
  { "name": "Maria Neusa de Aparecida", "cpf": "97905796671",
  "state": "Sao Paulo", "value": "1234" },
  { "name": "Ricardo Fontes", "cpf": "44010762900",
  "state": "Rio Grande do Sul", "value": "567" }
  ]

def solution(string)
  cpf =string[0,11]
  name =string[11,14]
  value =string[25,15] 
  format_string(cpf,name,value)
end 

def format_string(cpf,name,value)
  str1 = "cpf, name, value"
  str2 = ("#{cpf} | #{name} | #{value}")
  keys = str1.split(", ") 
  values = str2.split("|") 
  create_hash(keys, values, str1)
end

def create_hash(keys, values, str1)
  hash = {}
  while hash.size < 3
      for i in 0..2
        if keys[i] == "value"
          hash[keys[i]] = values[i].to_i
        else
          hash[keys[i]] = values[i] 
        end
  end
      end
      p hash
end
solution("44010762900Ricardo Fontes00000567")