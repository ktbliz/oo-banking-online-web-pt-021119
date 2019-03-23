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
    if @sender.valid? && self.status == "pending"
      @receiver.balance += @amount 
      @sender.balance -= @amount 
      @status = "complete"
    elsif 
      return "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    if @status == "complete"
      @receiver.balance -= @amount 
      @sender.balance += @amount
      @status = "reversed"
    end 
  end 
  
  
end
