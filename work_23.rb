require './common'

puts '会社名を入力してください'
input_company_name = gets.chomp!
puts '部署名を入力してください'
input_department_name = gets.chomp!

company = Company.find_or_create_by(company_name: input_company_name)
department = company.departments.find_or_create_by(department_name: input_department_name)