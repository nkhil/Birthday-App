
feature 'Initial test' do
  scenario 'Can run the app and check that the page loads' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end