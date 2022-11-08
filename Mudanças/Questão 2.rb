require 'yaml'

input = [
{ "name": 'Maria Neusa de Aparecida', "cpf": '97905796671',
"state": 'Sao Paulo', "value": '1234' },
{ "name": 'Ricardo Fontes', "cpf": '44010762900',
"state": 'Rio Grande do Sul', "value": '567' }
]
def outputs(output,itens,valor)
    if paddings(valor["padding"]) == true && aligns(valor["align"]) == true
        output <<"#{itens.ljust(valor["length"],"0")}"
    elsif paddings(valor["padding"]) == true && aligns(valor["align"]) == false
        output <<"#{itens.rjust(valor["length"],"0")}"
    elsif paddings(valor["padding"]) == false && aligns(valor["align"]) == true
        output <<"#{itens.ljust(valor["length"],"\s")}"
    elsif paddings(valor["padding"]) == false && aligns(valor["align"]) == false
        output <<"#{itens.rjust(valor["length"],"\s")}"
    end
end
def aligns(value)
    if value == 'left'
        return true
    else
        return false
    end
end
def paddings(value)
    if value == 'zeroes'
        return true
    else
        return false
    end
end
def solucao(input)
    for i in 0..1 do
    output = ""
    chaves = YAML.load_file('# format-2.yaml').keys
    chaves.each do |chave|
        valor = YAML.load_file('# format-2.yaml')[chave]
        input[i].map do |itens|
            itens = input[i]
                if chave == "cpf" && itens[:cpf].size>=valor["length"]
                    puts
                    output << itens[:cpf][0,valor["length"]]
                    break
                elsif chave == "cpf"
                    itens =itens[:cpf]
                    output <<"#{itens.rjust(valor["length"],"0")}"
                    break
                end
                if chave == "name" && itens[:name].size >=valor["length"]
                    output << itens[:name][0,valor["length"]]
                    break
                elsif chave == "name"
                    itens =itens[:name]
                    outputs(output,itens,valor)
                    break
                end
                if  chave == "value" && itens[:value].size >=valor["length"]
                    output << itens[:value][0,valor["length"]]
                    break
                elsif chave == "value"
                    itens =itens[:value]
                    outputs(output,itens,valor)
                    puts
                    break
                end
                if  chave == "state" && itens[:state].size >=valor["length"]
                    output <<itens[:state][0,valor["length"]]
                    print output
                    break
                elsif chave == "state"
                    itens =itens[:state]
                    outputs(output,itens,valor)
                    print output
                    break
                end
    end
        end
    end
end
solucao(input)