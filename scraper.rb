require 'nokogiri'
require 'open-uri'

def  get_the_email_of_a_townhal_from_its_webpage
	url = "http://annuaire-des-mairies.com/95/vaureal.html"
	doc = Nokogiri::HTML(open(url))
	doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').map do |email|
	  puts email.text
	end

end
get_the_email_of_a_townhal_from_its_webpage


def get_all_the_urls_of_val_doise_townhalls
	url = "http://annuaire-des-mairies.com/val-d-oise.html"
	doc = Nokogiri::HTML(open(url))
	doc.css('table.Style20 a').map do |urlall|
		urlall = urlall["href"].gsub('./','')
		urlallo ="http://annuaire-des-mairies.com/#{urlall}"
		
		puts urlallo
	end
end
get_all_the_urls_of_val_doise_townhalls
