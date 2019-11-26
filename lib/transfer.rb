class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount =amount
    @status = status
  end
  
  def valid?
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction
   if self.valid? == true && status == "pending"
     if amount < self.sender.balance
       self.sender.balance -= amount
       self.receiver.balance += amount
       self.status = "complete"
    elsif amount > self.sender.balance
      self.status = "rejected"
      "Transaction rejected, please check your account balance."
    end
  end 
  end
  
end
