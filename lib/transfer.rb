class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount =amount
    @status = status
  end
  
  def sender_valid?(sender)
    sender.valid?
  end
  
  
  
end
