activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets
# Use “pretty” URLs (without the `.html` suffix)
activate :directory_indexes

# Append hashes to compiled assets
activate :asset_hash

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
