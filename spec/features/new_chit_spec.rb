
 feature 'Adding a new chit' do
   scenario 'user posts a chit and can view it' do
     sign_up
     click_button('new')
     fill_in 'peepbody', with: 'Chitter me something!'
     expect { click_button 'submit' }.to change(Peep, :count).by(1)
     expect(page).to have_content('Chitter me something!')
   end
 end
