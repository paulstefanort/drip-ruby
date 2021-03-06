require File.dirname(__FILE__) + '/../test_helper.rb'

class Drip::CollectionsTest < Drip::TestCase
  should "find collections" do
    assert_equal Drip::Subscribers, Drip::Collections.find_class("subscribers")
    assert_equal Drip::Accounts, Drip::Collections.find_class("accounts")
    assert_equal Drip::Errors, Drip::Collections.find_class("errors")
    assert_equal Drip::Purchases, Drip::Collections.find_class("purchases")
  end

  should "return base collection by default" do
    assert_equal Drip::Collection, Drip::Collections.find_class("foo")
  end
end
