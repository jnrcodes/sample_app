[ "Artifact Fragment",    "Biochemical Compound", "Biochemical Sample", 
  "Color Crystal",        "Gemstone",             "Lockbox",             
  "Luxury Fabric",        "Medical Supply",       "Power Crystal",     
  "Researched Compound",  "Scavenged Compound",   "Scavenged Metal", 
  "Underworld Metal" ].each do |name|
   MaterialType.create!(name: name)
end


ff = Selenium::WebDriver.for :firefox
ff.navigate.to 'http://www.torhead.com/items'

browse = ff.find_element(css: 'nav ul > li.unlinked > a') rescue nil
browse.click

items = nil
while items.nil?  do
  items = browse.find_element(css: 'a[href=/items]') rescue nil
end
puts "found it!" unless items.nil?

