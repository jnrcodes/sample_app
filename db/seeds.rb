require 'nokogiri'
require 'open-uri'

{ 
  'Archaeology'        => [ 'Color Crystals', 'Power Crystals', 'Artifact Fragments' ],
  'Bioanalysis'        => [ 'Biochemical Samples' 'Biochemical Compounds' ],
  'Diplomacy'          => [ 'Medical Supplies', 'Investigation', 'Researched Compounds' ],
  'Scavenging'         => [ 'Scavenged Compounds', 'Scavenged Metals' ],
  'Slicing '           => [ 'Lockboxes' ],
  'Treasure Hunting'   => [ 'Gemstones', 'Lockboxes' ],
  'Underworld Trading' => [ 'Luxury Fabrics', 'Underworld Metal' ]
}.each do |skill_name, material_types| 
  skill = Skill.find_or_create_by!(name: skill_name)
  material_types.each do |type_name|
    skill.material_types << MaterialType.find_or_create_by!(name: type_name)
  end
end

def populate_material_data(material, url) 
  if (Nokogiri::HTML(open "http://torhead.com#{url}").css('div.thtt-desc').first.text rescue '') =~ /Grade (\d+)/
    material.grade = $1.to_i
    material.save!
  end
end

def populate_material_type_data(material_type, url) 
  
  Nokogiri::HTML(open "http://torhead.com#{url}").css('a[href^="/item/"]').each do |elem|
   name = elem.text
   if !name.nil? || name.empty? then
     material = Material.find_or_create_by!(name: name)
     material.update!(material_type: material_type)
     populate_material_data(material, elem.attribute('href'))
   end
  end
end

page = Nokogiri::HTML( open 'http://www.torhead.com/items' )

page.css(%{a[href^="/items/catg/9/subcatg/"]}).each do |elem|
   name = elem.text
   if !name.nil? || name.empty? then
     populate_material_type_data(MaterialType.find_or_create_by!(name: name), elem.attribute('href'))
   end
end
