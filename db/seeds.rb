require 'nokogiri'
require 'open-uri'

def populate_material_data(material, url) 
  if (Nokogiri::HTML(open "http://torhead.com#{url}").css('div.thtt-desc').first.text rescue '') =~ /Grade (\d+)/
    material.grade = $1.to_i
    material.save!
  end
end

def populate_materials(material_type, url) 
  Nokogiri::HTML(open "http://torhead.com#{url}").css('a[href^="/item/"]').each do |elem|
   name = elem.text
   if !name.nil? || name.empty? then
     populate_material_data(material_type.materials.create!(name: name), elem.attribute('href'))
   end
  end
end

page = Nokogiri::HTML( open 'http://www.torhead.com/items' )

page.css(%{a[href^="/items/catg/9/subcatg/"]}).each do |elem|
   name = elem.text
   if !name.nil? || name.empty? then
     populate_materials(MaterialType.create!(name: name), elem.attribute('href'))
   end
end
