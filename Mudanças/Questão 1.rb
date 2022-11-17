inputs =[
    { "name": "Maria Neusa de Aparecida", "cpf": "97905796671",
    "state": "Sao Paulo ", "value": "1234"  },
    { "name": "Ricardo Fontes", "cpf": "44010762900",
    "state": "Rio Grande do Sul", "value": "567" }
]

def solution(inputs)
    inputs.each do |input|
        output = ""
        input.each do |key, value|
            output << input[key.to_sym][0,11]
        end
        p output
    end
end

solution(inputs)