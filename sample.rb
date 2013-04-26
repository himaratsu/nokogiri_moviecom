# -- coding: utf-8

require "open-uri"
require "rubygems"
require "nokogiri"

# スクレイピングするURL
url = "http://www.walmart.com.br/"

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end
doc = Nokogiri::HTML.parse(html, nil, charset)

# タイトルを表示
p doc.title
