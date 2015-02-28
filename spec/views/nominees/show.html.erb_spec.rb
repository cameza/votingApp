require 'spec_helper'

describe "nominees/show" do
  before(:each) do
    @nominee = assign(:nominee, stub_model(Nominee,
      :nominee_mail => "Nominee Mail",
      :nominee_name => "Nominee Name",
      :cv => "MyText",
      :statement => "MyText",
      :committee_check => false,
      :committee_check_count => 1,
      :chairman_check => false,
      :confirmed => 2,
      :not_confirmed => 3,
      :abstained => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nominee Mail/)
    rendered.should match(/Nominee Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
