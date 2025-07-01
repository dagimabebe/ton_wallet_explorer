# ton_wallet_explorer
markdown
# TON API Wallet Explorer (Ruby Edition)

A lightweight Ruby CLI tool to fetch wallet balances, NFTs, and transactions from the [TON blockchain](https://ton.org/) via [TONAPI](https://tonapi.io/).

![Demo](https://img.shields.io/badge/status-active-brightgreen) 
![Ruby](https://img.shields.io/badge/ruby-%3E%3D3.0-red)

## Features
- ✅ Fetch wallet balances in **TON** or **jettons**
- ✅ List NFTs owned by a wallet
- ✅ JSON or formatted table output
- 🔜 (Coming soon) Transaction history lookup

## Installation
### 1. Install Ruby
Ensure Ruby 3.0+ is installed:
```bash
ruby --version  # >= 3.0
2. Clone and Setup
bash
git clone https://github.com/your_username/tonapi_wallet_explorer.git
cd tonapi_wallet_explorer
bundle install
3. Configure API Key
Add your TONAPI key to config/defaults.yml:

yaml
tonapi_key: "your_api_key_here"
(Get a free key from TONAPI.io)

Usage
CLI Commands
bash
# Fetch wallet balance
./bin/tonapi-wallet balance EQABC...xyz

# Fetch NFTs (coming soon!)
./bin/tonapi-wallet nfts EQABC...xyz

# Output as JSON
./bin/tonapi-wallet balance EQABC...xyz --json
Programmatic Use
ruby
require 'tonapi_wallet'

wallet = TonapiWallet.fetch("EQABC...xyz")
puts wallet.balance  # "124.5 TON"
Development
Run Tests
bash
rspec spec/
Build Gem (Optional)
bash
gem build tonapi_wallet.gemspec
gem install ./tonapi_wallet-0.1.0.gem
Contributing
PRs welcome! To add a new feature:

Fork the repo

Add specs in spec/

Submit a PR.
