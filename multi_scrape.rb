(77268..77273).each do |i|
  code = "ruby scrape.rb http://eiga.com/movie/#{i}/"
  system(code)
  p "----"
end
