class Wallet
  attr_reader :address, :balance, :nfts

  def initialize(data)
    @address = data['address']
    @balance = data['balance']
    @nfts = data['nfts'] || []
  end

  def to_json
    { address: @address, balance: @balance, nfts: @nfts }.to_json
  end
end
