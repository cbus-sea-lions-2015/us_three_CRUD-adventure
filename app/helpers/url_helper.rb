
def get_short_url
  ('a'..'z').to_a.sample(6).join
end

def get_logged_in_user
  if session[:id]
    User.find(session[:id])
  end
end
