# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Watch.create ([
  		{
  			name: "Backup Black", 
  			brand: "Swatch",
  			description: "Add a sophisticated touch to every look with BACKUP BLACK (SUOB715). This iconic style sports an easy-to-read dial in clean black with white Arabic numerals, indexes, and a date window. A matching strap in black finishes the look.",
  			pre_owned: false, 
  			price_in_pence: 50000,
  			gender: "unixex"


  		},
  		{
  			name: "Classical Digital Casio", 
  			brand: "Casio",
  			description: "Featuring five alarms, the Casio Tough Solar Illuminator is a rugged watch for action men. Water resistant to 100m and featuring a digital date function, this watch is for performance and looks.",
  			pre_owned: true, 
  			price_in_pence: 4050,
  			gender: "unixex"

  		}, 
  		{
  			name: "1960s Vintage Raketa", 
  			brand: "Raketa",
  			description: "Raketa mechanical men's watch as seen on the pictures. Elegant and traditional timepiece.Case is gold plated, has roman numbers on dial. Fitted with new glass and brand new genuine leather strap. Diameter is 36 mm (with crown), thickness is 10 mm (including glass) and the strap is 18 mm wide. 17 jewel mechanism is serviced and cleaned by a porfessional watch repairer.",
  			pre_owned: true, 
  			price_in_pence: 12000,
  			gender: "unixex"

  		}, 
  		{
  			name: "Max Bill Chronoscope", 
  			brand: "Junghans",
  			description: "As one of the most extraordinary designers of the last century, the architect, painter, sculptor and product designer Max Bill left behind an extensive life’s work, including one of the most fascinating watch collections of recent decades.",
  			pre_owned: false, 
  			price_in_pence: 500000,
  			gender: "m"
  		}
  	])