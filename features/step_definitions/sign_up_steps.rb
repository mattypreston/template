Given /^the following sign_ups:$/ do |sign_ups|
  SignUp.create!(sign_ups.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) sign_up$/ do |pos|
  visit sign_ups_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following sign_ups:$/ do |expected_sign_ups_table|
  expected_sign_ups_table.diff!(tableish('table tr', 'td,th'))
end

Then /^I go to the home page$/ do
  visit '/'
end

Given /^I am not logged in$/ do
  step %{I sign out}
end

Then /^I sign out$/ do
  visit '/users/sign_out'
end

#Given /^I fill in the following:$/ do |table|
  # table is a Cucumber::Ast::Table
 # table.rows_hash.each do |key, value|
 #   fill_in(key, :with => value)
 # end
#end
