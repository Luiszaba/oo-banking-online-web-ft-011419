class BankAccount

attr_accessor :balance, :status
attr_reader :name

@@bank_account = []


def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def display_balance
  "Your balance is $#{balance}."
end

def close_account
  self.status = "closed"
end

def deposit(amount)
  @balance = @balance + amount
end

def valid?
 @status=="open" && @balance > 0
end
end
