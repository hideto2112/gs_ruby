require './common'
url = 'https://gsacademy.tokyo/'
charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css('a').each do |anchor|
    if(anchor.css('.label').text == 'INTERVIEW')
        puts ["Title：", anchor.css('.title').text]

        # Interview記事のリンク取得
        content_url = anchor[:href]

        # リンク先取得
        content_html = open(content_url) do |content|
            charset = content.charset
            content.read
        end

        # オブジェクトを作成
        content_doc = Nokogiri::HTML.parse(content_html, nil, charset)

        puts "Article："

        # 記事の本文抽出
        content_doc.css('div.row > p').each do |article|
            puts article.text
        end
    end
end