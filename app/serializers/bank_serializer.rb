class BankSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :money
end
