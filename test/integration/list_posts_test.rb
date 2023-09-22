require "test_helper"

  require "application_system_test_case"

  class ListPosts < ApplicationSystemTestCase
    test "See post" do
      visit posts_path
      assert_text 'Posts'
      click_on 'New post'
    end
  end
