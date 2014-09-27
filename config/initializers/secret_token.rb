# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
TaskManager::Application.config.secret_key_base = '25c960fc0b73f174dbd56906bb713965b54f07845b3a574e5876d098e791e295e53d24f22e5ef6904f23acb3a3a25a48ef93b0d897a06aa4bcc8dfd62a198a81'
