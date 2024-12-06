#!/bin/zsh

echo "🧹 Cleaning up assets and cache..."
rails assets:clobber
rm -rf tmp/cache

echo "\n🔄 Installing Turbo and Stimulus..."
rails turbo:install
rails stimulus:install

echo "\n🏗️  Precompiling assets..."
rails assets:precompile

echo "\n✅ Done! Don't forget to restart your Rails server." 