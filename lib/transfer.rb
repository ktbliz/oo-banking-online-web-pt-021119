class Transfer
  
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    @sender.valid? && @receiver.valid? ? TRUE : FALSE
  end 
  
  def execute_transaction 
    if self.valid? && self.status == "pending"
      @receiver.balance += @amount 
      @sender.balance -= @amount 
      @status = "complete"
    elsif self.valid == False 
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    @receiver.balance -= @amount 
    @sender.balance += @amount
  end 
  
  
end
