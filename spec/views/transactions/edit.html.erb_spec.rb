require 'spec_helper'

describe "transactions/edit.html.erb" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :note => "MyText",
      :folded => 1,
      :flat => 1
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path(@transaction), :method => "post" do
      assert_select "textarea#transaction_note", :name => "transaction[note]"
      assert_select "input#transaction_folded", :name => "transaction[folded]"
      assert_select "input#transaction_flat", :name => "transaction[flat]"
    end
  end
end
