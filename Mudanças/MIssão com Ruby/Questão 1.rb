
input =[
    { "name"=> "Maria Neusa de Aparecida", "cpf"=> "97905796671",
    "state"=> "Sao Paulo", "value"=> "1234" },
    { "name": "Ricardo Fontes", "cpf": "44010762900",
    "state": "Rio Grande do Sul", "value": "567" }
]

def solucao(nome)
    s =nome.size 
    for k in 0..s -1 do 
        nome[k].each do |chave, valor|
            if chave != "value"
                print valor[0,11]
            else
                print ("\s") + valor[0,11]
                puts 
            end
        end
    end
end

solucao(input)