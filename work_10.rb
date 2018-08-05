require './common'
url = 'https://gsacademy.tokyo/'
charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css('p.label').each do |title|
    if title.text == "INTERVIEW"
        puts title.parent.css('.title').text
    end
end