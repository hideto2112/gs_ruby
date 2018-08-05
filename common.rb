require 'nokogiri'
require 'active_record'
require 'open-uri'
require 'pp'

# 標準出力ログ
ActiveRecord::Base.logger = Logger.new(STDOUT)

# active_recordを継承する
class User < ActiveRecord::Base
end

# 会社 1対多の1側
class Company < ActiveRecord::Base
    has_many :departments
end

# 部署 1対多の多側
class Department < ActiveRecord::Base
    belongs_to :companies
end

class Account < ActiveRecord::Base
    belongs_to :companies
end

ActiveRecord::Base.establish_connection(
    adapter:    "mysql2",       # アダプター名
    host:       "localhost",    # ホスト名
    username:   "root",         # ユーザー名
    password:   "",             # パスワード
    database:   "gs_ruby",      # データベース名
)