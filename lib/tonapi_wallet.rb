require_relative 'client'
require_relative 'models/wallet'

module TonapiWallet
  def self.fetch(address)
    client = Client.new
    data = client.get_wallet(address)
    Wallet.new(data)
  end
end
