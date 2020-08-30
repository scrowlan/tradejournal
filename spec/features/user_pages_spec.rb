require 'spec_helper'
require 'rails_helper'
require './spec/support/utilities'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', :visible => false, text: full_title('Sign up')) }
  end
end