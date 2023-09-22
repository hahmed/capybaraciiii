require "test_helper"

  require "application_system_test_case"

  class ListPosts < ApplicationSystemTestCase
    if ENV["CI"]
      driven_by :selenium, using: :headless_chrome
    end

    test "See post" do
      visit posts_path
      assert_text 'Posts'
      click_on 'New post'
    end
  end
