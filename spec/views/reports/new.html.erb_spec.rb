require 'rails_helper'

RSpec.describe "reports/new", type: :view do
  before(:each) do
    assign(:report, Report.new(
      :text => "MyText",
      :occurrence_id => nil,
      :comment_id => nil
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "textarea#report_text[name=?]", "report[text]"

      assert_select "input#report_occurrence_id_id[name=?]", "report[occurrence_id_id]"

      assert_select "input#report_comment_id_id[name=?]", "report[comment_id_id]"
    end
  end
end
