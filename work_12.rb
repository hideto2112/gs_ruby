require './common'

def getHtml(url, charset)
    html = open(url) do |f|
        charset = f.charset
        f.read
    end

    return Nokogiri::HTML.parse(html, nil, charset)
end

url = 'https://gsacademy.tokyo/'
charset = nil
doc = getHtml(url, charset)

doc.css('a').each do |anchor|
    if anchor.css('.label').text == 'INTERVIEW'
        puts ["Title：", anchor.css('.title').text]

        # Interview記事のリンク取得
        content_url = anchor[:href]
        charset = nil
        
        # リンク先を取得し、オブジェクトを作成
        content_doc =  getHtml(content_url, charset)

        puts "Article："

        # 記事の本文抽出
        content_doc.css('div.row > p').each do |article|
            puts article.text
        end
    end
end