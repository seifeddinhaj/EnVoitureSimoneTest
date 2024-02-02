FactoryBot.define do
  factory :potato_price do
    time { Faker::Date.backward(days: 14) } # Génère une date aléatoire dans les 14 jours précédents
    value { Faker::Number.decimal(l_digits: 3, r_digits: 2) } # Génère un nombre décimal avec 3 chiffres avant la virgule et 2 chiffres après
  end
end