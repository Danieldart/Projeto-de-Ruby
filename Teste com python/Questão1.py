
import yaml


input = [
{ "name": "Maria Neusa de Aparecida", "cpf": "97905796671",
"state": "Sao Paulo", "value": "1234" },
{ "name": "Ricardo Fontes", "cpf": "44010762900",
"state": "Rio Grande do Sul", "value": "567" }
]
def solucao(arg):
# Retornar um string
    for Chave, item in arg[0].items():
        if Chave=="value":
            print(f" {item[:11]}",end="")
            
        else:
            print(f"{str(item[:11])}",end="") 
    print("\n")
    for Chave, item in arg[1].items() :
        if Chave=="value":
            print(f"{item[:11]}",end="")
        
        else:
            print(f"{str(item[:11])}",end="")
                
pass

solucao(input) == "Maria Neusa97905796671Sao Paulo 1234 \nRicardo Fon44010762900Rio Grande 567"


