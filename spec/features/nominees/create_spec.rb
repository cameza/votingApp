require 'spec_helper'

describe "Creating nominees" do 
	it "redirects to the nominees index page on success" do
		visit "/nominees"
		click_link "New Nominee"
		expect(page).to have_content("New nominee")

		fill_in "Nominee mail", with: "nomineeTest1@mail.com"
		fill_in "Nominee name", with: "nomineeTest1"
		click_button "Create Nominee"

		expect(page).to have_content("nomineeTest1")
	end

	it "displays an error when the nominees has no Nominee mail" do
		expect(Nominee.count).to eq(0)

		visit "/nominees"
		click_link "New Nominee"
		expect(page).to have_content("New nominee")

		fill_in "Nominee mail", with: ""
		fill_in "Nominee name", with: "nomineeTest2"
		click_button "Create Nominee"

		expect(page).to have_content("error")
		expect(Nominee.count).to eq(0)

		visit "/nominees"
		expect(page).to_not have_content("nomineeTest2")
	end
end