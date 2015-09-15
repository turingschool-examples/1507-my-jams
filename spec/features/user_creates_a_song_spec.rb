require 'rails_helper'

feature "User creates a new song" do
  scenario "with valid attributes" do
    visit new_song_path
    fill_in "song[title]", with: "Highway to Rails"
    fill_in "song[artist]", with: "AR/DB"
    byebug
    click_on "Create Song"

    expect(current_path).to eq(songs_path)
  end
end


