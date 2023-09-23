require "test_helper"

  require "application_system_test_case"

  class ListPosts < ApplicationSystemTestCase
    driven_by :selenium, using: :headless_chrome

    test "See post" do
      visit posts_path
      assert_text 'Posts'
      click_on 'New post'
    end
  end
