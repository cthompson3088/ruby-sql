# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Salesperson.all.count} salespeople in our table"

# 2. insert 1-2 rows in salespeople table.

alan_alterson = Salesperson.new
alan_alterson["first_name"] = "Alan"
alan_alterson["last_name"] = "Alterson"
alan_alterson["email"] = "aa@gmail.com"
alan_alterson.save

billy_bats = Salesperson.new
billy_bats["first_name"] = "Billy"
billy_bats["last_name"] = "Bats"
billy_bats["email"] = "bb@gmail.com"
billy_bats.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople in our table"


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

newName = Salesperson.find_by({"first_name" => "Billy", "last_name" = "Bats"})
newName["first_name"] = "Billiam"
newName.save



# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng


for seller in Salesperson.all
    firstName = seller["first_name"]
    lastName = seller["last_name"]

    puts "#{firstName} #{lastName}"

end

