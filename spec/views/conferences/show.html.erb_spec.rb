require 'spec_helper'

describe "conferences/show.html.erb" do
  before(:each) do
    @conference = assign(:conference, stub_model(Conference,
      :code => "Code",
      :name => "Name",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notes/)
  end
end
