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
    if self.valid? 
      @receiver.balance += @amount 
      @sender.balance -= @amount 
    end 
  end 
  
  def reverse_transfer
    
  end 
  
  
end
