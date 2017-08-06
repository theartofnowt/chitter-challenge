def sign_up
   visit('/')
   click_button('sign up')
   fill_in :name, with: 'pooper'
   fill_in :email, with: 'pooper@scooper.com'
   fill_in :password, with: 'sc00per'
   click_button('submit')
 end

 def login
   visit('/')
   click_button('login')
   fill_in :email, with: 'pooper@scooper.com'
   fill_in :password, with: 'sc00per'
   click_button('submit')
 end
