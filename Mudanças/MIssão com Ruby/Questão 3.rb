require "yaml"


input = [
    { "name": "Maria Neusa de Aparecida", "cpf": "97905796671",
    "state": "Sao Paulo", "value": "1234" },
    { "name": "Ricardo Fontes", "cpf": "44010762900",
    "state": "Rio Grande do Sul", "value": "567" }
    ]

def solucao(arg)
    s =YAML.load_file('# format-2.yaml')
    s.each do |chave, valor|
        cpf =arg[0,11]
        nome =arg[11,14]   
        valor =arg[25,15]
        str1 = "cpf, name, value"
        str2 = ("#{cpf} | #{nome} | #{valor}")
        keys = str1.split(", ") 
        values = str2.split("|") 
        dictionary = {}
        while dictionary.size < 3
            for i in 0..2
                dictionary[keys[i]] = values[i]
        end
            end
        print(dictionary)
        break

        
    end    
    
end 
solucao("97905796671Maria Neusa de00001234")