# frozen_string_literal: true

jane = {
  first_name: "Jane",
  last_name: "Doe",
  level: :senior_level,
  age: 30,
  occupation: "Software Developer",
  employed: true,
  current_salary: 125_000.00,
  languages: ["Ruby", "JavaScript", "Go"],
}

sara = {
  first_name: "Sara",
  last_name: "Smith",
  level: :mid_level,
  age: 26,
  occupation: "Software Developer",
  employed: true,
  current_salary: 80_000.00,
  languages: ["Ruby", "Python"]
}

jason = {
  first_name: "Jason",
  last_name: "Gray",
  level: :entry_level,
  age: 23,
  occupation: "Student",
  employed: false,
  current_salary: 0.00,
  languages: ["C++", "Python"]
}

candidates = [jane, sara, jason]

puts candidates

def average_age(people)
  people.map { |person| person[:age] }.reduce(:+) / people.length.to_f
end

avg = average_age(candidates)
puts avg

def language_screening(people, lang)
  people.select { |person| person[:languages].map { |language| language.downcase}.include?(lang.downcase)}
end

python_people = language_screening(candidates, "Python")
go_people = language_screening(candidates, "Go")
javascript_people = language_screening(candidates, "javascript")

puts python_people
puts go_people
puts javascript_people

