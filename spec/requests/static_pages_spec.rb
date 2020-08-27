require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Trade Journal'" do
      visit '/static_pages/home'
      page.should have_content('Trade Journal')
    end
  end
end