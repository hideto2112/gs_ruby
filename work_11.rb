require './common'
url = 'https://gsacademy.tokyo/'
charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css('a').each do |anchor|
    if anchor.css('.label').text == 'INTERVIEW'
        puts anchor[:href]
    end
end