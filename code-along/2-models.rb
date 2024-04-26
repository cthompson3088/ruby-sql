# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# puts "There are #{Company.all.count} companies in our table"


# 2. insert new rows in companies table

 new_company = Company.new
 
 # this output is the place in this computer where this variable lives
# puts new_company 
# this puts the actual thing
#  p new_company

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company ["url"] = "https://apple.com"

# p new_company
new_company.save
# p new_company

# puts "There are #{Company.all.count} companies in our table"


company = Company.new
company["name"] = "Amazon"
company["city"] = "Seattle"
company["state"] = "WA"
company ["url"] = "https://amazon.com"
company.save

# p new_company

company_three = Company.new
company_three["name"] = "Twitter"
company_three["city"] = "SF"
company_three["state"] = "CA"
company_three["url"] = "https://x.com"
company_three.save

# puts "There are #{Company.all.count} companies in our table"


# 3. query companies table to find all row with California company

all_companies = Company.all
# p all_companies

cali_companies = Company.where({"state" => "CA"})
# p cali_companies

# puts "California companies: #{cali_companies.count}"



# 4. query companies table to find single row for Apple

#When we want to grab one thing, we use something specific
# This is super relevant because you need to be able to pull up a SINGLE page for
#a given company, so this helps you get that row!
apple = Company.find_by({"name" => "Apple"})
p apple


# 5. read a row's column value

p apple["name"]
p apple["url"]


# 6. update a row's column value (let's change twitter name to X)

#find twitter row
twitter = Company.find_by({"name" => "Twitter"})
p twitter

#change column
twitter["url"] = "https://twitter.com"
# p twitter
twitter["name"] = "X (Formerly Twitter)"
twitter.save

# p twitter

# 7. delete a row
x = Company.find_by({"name" => "X (Formerly Twitter)"})
x.destroy

puts "There are #{Company.all.count} companies in our table"
