require "rd_challenge_vivianec/version"
require "databasedotcom"
require "databasedotcom-rails"


class Rd_challenge

		
	def initialize(username,password, secret_key)
		@client = Databasedotcom::Client.new :client_id => "3MVG9KI2HHAq33RyYledDrdII89nfYn3XjQ6yVzPKP_GqG1JG1JciqLdcbGQ3QB5mu.f0OAr4GjCOBk0JiaGb", :client_secret => "6997523342987315578" 
		@client.authenticate :username => username, :password => password+secret_key
	end

	def createLead(name,lastName,email,company,job_title,phone,website)
		
		#contact_class = client.materialize("Contact")
		
		contact_class = @client.materialize("Contact")
		lead_class=@client.materialize("Lead")
		lead=Lead.new
		leads=Lead.all
		user= Contact.first
		lead.Name = name
		lead.LastName = lastName
		lead.Email = email
		lead.Company = company
		lead.Title = job_title
		lead.Phone = phone
		lead.Website = website
		lead.OwnerId=user.OwnerId
		lead.IsConverted=false
		lead.IsUnreadByOwner=true

		#lead.save
	end

	def getLeads()

		lead_class=@client.materialize("Lead")
		lead=Lead.new
		leads=Lead.all
		return leads
	end

	 
end
