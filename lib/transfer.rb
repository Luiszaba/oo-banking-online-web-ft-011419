class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
<<<<<<< HEAD
    if status == "pending" && valid? && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
      else 
        @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end
  
  def reverse_transfer
    if status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      @status = "reversed"
    end
  end
end

=======
    if @status = "pending" && sender.balance > amount
      @sender = sender.balance - sender.amount
      @receiver = receiver.balance + sender.amount
      @status = "complete"
    else 
      @status ==n rejected. Please check your account balance."
end
end
end
>>>>>>> 9659c81fa77d59b03669ae7f2add42146b29ebf0
