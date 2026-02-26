Rails.application.routes.draw do
  resources "posts"
  resources "sessions"
  resources "users"
  resources "comments"

  get("/login", {:controller => "sessions", :action => "new"})
  get("/logout", {:controller => "sessions", :action => "destroy"})

  get("/", {:controller => "sessions", :action => "new"})
end
