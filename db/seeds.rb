# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SERVICES = JSON.parse File.read("#{Rails.root}/lib/assets/services.json"), object_class: OpenStruct
SERVICES.each do |service|
	Service.find_or_create_by(name: service.name) do |new_service|
		new_service.description = service.description
		new_service.price = service.price
		new_service.position = service.position
	end
end

NavItem.find_or_create_by href: '/services', text: 'Services & Pricing'
NavItem.find_or_create_by href: '/portfolio', text: 'Portfolio'
NavItem.find_or_create_by href: '/faqs', text: 'FAQs'
NavItem.find_or_create_by href: '/blog', text: 'Blog'
