require 'spec_helper'

describe "transactions/show.html.erb" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :note => "MyText",
      :folded => 1,
      :flat => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
