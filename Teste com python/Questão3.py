import yaml

input = [
{ "name": "Maria Neusa de Aparecida", "cpf": "97905796671",
"state": "Sao Paulo", "value": "1234" },
{ "name": "Ricardo Fontes", "cpf": "44010762900",
"state": "Rio Grande do Sul", "value": "567" }
]
def solucao(arg):
# Retornar um string

    with open('# format-1.yaml') as f:
    
        docs = yaml.load_all(f, Loader=yaml.FullLoader)

        for doc in docs:
            for k, v in doc.items():
                c =arg[0:11]
                n =arg[11:25]
                val =arg[25::1]
                str1 = "cpf, name, value"
                str2 = (f"{c} | {n} | {int(val)}")
                keys = str1.split(", ") 
                values = str2.split("|") 
                dictionary = {} 
                for i in range(len(keys)): 
                    dictionary[keys[i]] = values[i] 
                print(dictionary) 
                break

solucao("97905796671Maria Neusa de00001234")