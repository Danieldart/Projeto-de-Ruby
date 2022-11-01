
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
                    
                    for item in v.items() :
                        if ('left'in str(v)):
                            for chave,valor in v.items():
                                if chave =="length":
                                    s =valor
                                    for chave, item in arg[0].items():
                                        if chave ==k:
                                            if  len(item)>=s  :
                                                print(f"{item[:s]: <0}",end="")
                                                break
                                            else:
                                                print(f"{item.zfill(s): <0}",end="")
                                                break
                        else:
                            for item in v.items() :
                                if ('right'in str(v)):
                                    for chave,valor in v.items():
                                        if chave =="length":
                                            s =valor
                                            for chave, item in arg[0].items():
                                                if chave ==k:
                                                    if  len(item)>=s  :
                                                        print(f"{item[:s]: <0}",end="")
                                                        break
                                                    else:
                                                        print(f"{item.zfill(s): <0}",end="")
                                                        break
                                    break 
                            
                        break
    print("\n")
            
    with open('# format-1.yaml') as f:
    
        docs = yaml.load_all(f, Loader=yaml.FullLoader)
        for doc in docs:
        
            for k, v in doc.items():
                    for item in v.items() :
                        if ('left'in str(v)):
                            for chave,valor in v.items():
                                if chave =="length":
                                    s =valor
                                    for chave, item in arg[1].items():
                                        if chave ==k:
                                            if  len(item)>=s  :
                                                print(f"{item[:s]: <0}",end="")
                                                break
                                            else:
                                                print(f"{item.zfill(s): <0}",end="")
                                                break
                        else:
                            for item in v.items() :
                                if ('right'in str(v)):
                                    for chave,valor in v.items():
                                        if chave =="length":
                                            s =valor
                                            for chave, item in arg[1].items():
                                                if chave ==k:
                                                    if  len(item)>=s  :
                                                        print(f"{item[:s]: <0}",end="")
                                                        break
                                                    else:
                                                        print(f"{item.zfill(s): <0}",end="")
                                                        break
                                    break 
                            
                        break
solucao(input)





