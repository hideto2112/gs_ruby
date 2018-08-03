require './common'

puts '会社名を入力してください'
input_company_name = gets.chomp!
puts '部署名を入力してください'
input_department_name = gets.chomp!

company = Company.create(company_name: input_company_name)
department = company.departments.build(department_name: input_department_name)
department.save

puts 'DBに登録しました'