# RdChallengeVivianec

This gem was part of the selection process from the company RD. The main functionality that  RdChallengeVivianec was addressed for were to insert new Leads into the user's account on Salesforce. 

## Installation


Or install it yourself as:

    $ gem install rd_challenge_vivianec

## Usage

After installed the gem , it is possible to instantiate the class Rd_challenge. Which contains the functionalities of the gem,in methods:
     Rd_Challege.new({
        :name => 'name'
        :password => password
        :secret_key =>secret_key
     
     }
    
    Rd_Challenge.createLead({
      :name => 'name',
      :last_name => 'last_name',
      :email => 'email',
      :company => 'company',
      :job_title => 'job_title',
      :phone => 'phone',
      :website => 'website'
      })
     Rd_challenge.getLeads()

##Tests

The tests were made with rspec, and they basically tests the integrity of the information provided.So to run the test you must execute:

       rspec spec
## Development


To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vivianep/rd_challenge_vivianec.

