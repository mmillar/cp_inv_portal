require 'spec_helper'

describe "conferences/index.html.erb" do
  before(:each) do
    assign(:conferences, [
      stub_model(Conference,
        :code => "Code",
        :name => "Name",
        :notes => "Notes"
      ),
      stub_model(Conference,
        :code => "Code",
        :name => "Name",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of conferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
