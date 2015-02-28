require 'spec_helper'

describe "nominees/new" do
  before(:each) do
    assign(:nominee, stub_model(Nominee,
      :nominee_mail => "MyString",
      :nominee_name => "MyString",
      :cv => "MyText",
      :statement => "MyText",
      :committee_check => false,
      :committee_check_count => 1,
      :chairman_check => false,
      :confirmed => 1,
      :not_confirmed => 1,
      :abstained => 1
    ).as_new_record)
  end

  it "renders new nominee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", nominees_path, "post" do
      assert_select "input#nominee_nominee_mail[name=?]", "nominee[nominee_mail]"
      assert_select "input#nominee_nominee_name[name=?]", "nominee[nominee_name]"
      assert_select "textarea#nominee_cv[name=?]", "nominee[cv]"
      assert_select "textarea#nominee_statement[name=?]", "nominee[statement]"
      assert_select "input#nominee_committee_check[name=?]", "nominee[committee_check]"
      assert_select "input#nominee_committee_check_count[name=?]", "nominee[committee_check_count]"
      assert_select "input#nominee_chairman_check[name=?]", "nominee[chairman_check]"
      assert_select "input#nominee_confirmed[name=?]", "nominee[confirmed]"
      assert_select "input#nominee_not_confirmed[name=?]", "nominee[not_confirmed]"
      assert_select "input#nominee_abstained[name=?]", "nominee[abstained]"
    end
  end
end
