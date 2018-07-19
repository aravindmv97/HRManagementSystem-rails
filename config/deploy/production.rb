set :branch, 'master'
set :stage, :production
set :rails_env, :production

set :normalize_asset_timestamps, %{public/images public/javascripts
public/stylesheets}

role :app, %w{ubuntu@18.219.95.160}

set :ssh_options, {
  keys: %w(/home/aravind/ArAvInD/WoRk/AWS/railsapp.pem),
  # keys: %w(/Users/bhuvanamalini/Documents/project_codingmart/dorak_pem_key/dorakholdingdevelopment.pem),
  # keys: %w(/home/kolanthai/Desktop/server/dorakholdingdevelopment.pem),
# keys: %w(/Users/karthi/Documents/keys/dorakholdingdevelopment.pem),
}	