require 'nokogiri'
require 'open-uri'


def cours
	price = []
	namo = []
	p_counter = 0
	n_counter = 0

	url = "https://coinmarketcap.com/all/views/all/"
	doc = Nokogiri::HTML(open(url))
	doc.css('a.currency-name-container.link-secondary').each do |nam|
		namo[n_counter] = nam.text
		n_counter += 1
		puts nam.text
	end
	

	doc.css('a.price').each do |price|
		price[p_counter] = price.text
		p_counter += 1
		puts price.text
	end
	
	
	give = namo.zip(price).to_h
	puts give
end
cours