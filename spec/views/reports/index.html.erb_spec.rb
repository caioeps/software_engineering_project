require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :text => "MyText",
        :occurrence_id => nil,
        :comment_id => nil
      ),
      Report.create!(
        :text => "MyText",
        :occurrence_id => nil,
        :comment_id => nil
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
