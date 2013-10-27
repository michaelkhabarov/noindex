Dummy::Application.routes.draw do
  get "skip_noindex/new"
  get "skip_noindex/edit"
  get "skip_noindex/index"

  get "noindex/new"
  get "noindex/edit"
  get "noindex/index"

  get "default/new"
  get "default/edit"
  get "default/index"
end
