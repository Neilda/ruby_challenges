require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open ('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

searching = doc.css('ul')
puts searching

list = doc.css('ul.component-list').children


#Don't forget the "n" in front of the ".css"
list.each do|n|
     puts n.css('.checklist-item-data').children
end