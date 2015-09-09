require "rd_challenge_vivianec/version.rb"
require "databasedotcom"


=begin
This class makes the connection with salesforce, to make the connection with salesforce it is necessary to provide username,password, and secret token.
Two operations are implemented: create Lead and get Leads current stored, on the user account.

=end
class Rd_challenge

		
	def initialize(username,password, secret_key)
		@client = Databasedotcom::Client.new :client_id => "3MVG9KI2HHAq33RyYledDrdII89nfYn3XjQ6yVzPKP_GqG1JG1JciqLdcbGQ3QB5mu.f0OAr4GjCOBk0JiaGb", :client_secret => "6997523342987315578" 
		@client.authenticate :username => username, :password => password+secret_key
	end

	def createLead(name,lastName,email,company,job_title,phone,website)
		
		contact_class = @client.materialize("Contact")#materialize Class Contact
		lead_class=@client.materialize("Lead")#materialize Class Lead
		lead=Lead.new #get an instance of lead
		user= Contact.first 
		#tests if any of the fields Name , LastName, email or phone are empty
		if(name == ""||lastName == ""||email =="" ||phone=="")
			return "Some obrigatory fields are empty"
		end
		lead.Name = name.capitalize #makes the first letter,capital
		lead.LastName = lastName.capitalize
		if !(email.include? "@") #check if email is valide
			return "Invalid email" 
		end
		lead.Email = email
		lead.Company = company
		lead.Title = job_title
		lead.Phone = phone
		lead.Website = website
		lead.OwnerId=user.OwnerId
		lead.IsConverted=false
		lead.IsUnreadByOwner=true
		lead.save #insert lead on salesforce
		return "Lead saved"
		
	end

	#return all the leads stored on salesforce
	def getLeads

		lead_class=@client.materialize("Lead")
		leads=Lead.all
		return leads
	end

	 
end

