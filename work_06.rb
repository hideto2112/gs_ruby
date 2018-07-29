puts "あなたの手を英字1文字で入力してください（g:グー、c:チョキ、p:パー）"
input = gets.chomp!

if (input == "g")
    player = "グー"
elsif (input == "c")
    player = "チョキ"
elsif (input == "p")
    player = "パー"
end

array = ["グー", "チョキ", "パー"]
com = array[rand(3)]

print "あなたは"+player+"、私は"+com+"、"

# 勝敗判定
if (player == com)
    puts "引き分けです。"
else
    if (player == "グー" && com == "チョキ" || player == "チョキ" && com == "パー" || player == "パー" && com == "グー")
        puts "あなたの勝ちです。"
    else
        puts "あなたの負けです。"
    end
end
