require 'spec_helper'

describe "nominees/index" do
  before(:each) do
    assign(:nominees, [
      stub_model(Nominee,
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
      ),
      stub_model(Nominee,
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
      )
    ])
  end

  it "renders a list of nominees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nominee Mail".to_s, :count => 2
    assert_select "tr>td", :text => "Nominee Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
