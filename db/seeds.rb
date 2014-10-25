[ "Artifact Fragment",    "Biochemical Compound", "Biochemical Sample", 
  "Color Crystal",        "Gemstone",             "Lockbox",             
  "Luxury Fabric",        "Medical Supply",       "Power Crystal",     
  "Researched Compound",  "Scavenged Compound",   "Scavenged Metal", 
  "Underworld Metal" ].each do |name|
   MaterialType.create!(name: name)
end
