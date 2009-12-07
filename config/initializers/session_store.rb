# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vcorp_session',
  :secret      => '6e6df4f620744f271530256ba2b3da2a8cb2e4fd02b62c561aff5cf50eb10c6c3c96f04b014341f227740226c5f5402cdd1c029ab41fb54009a5e27fbee31e28'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
