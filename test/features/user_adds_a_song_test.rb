require 'test_helper'

class UserAddsASongTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  test "user can add a song" do
    visit new_song_path
    fill_in "song[title]", with: "Hot Tubbin'"
    fill_in "song[artist]", with: "Clarence & the Machine"
    click_on "Create Song"
    # Fill in the form
    assert_equal songs_path, current_path
  end
end
