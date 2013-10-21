class Message
  include DataMapper::Resource

  property :id, Serial            # Auto-increment integer id
  property :from, String          # A short string of text
  property :content, Text         # A longer text block
  property :created_at, DateTime  # Auto assigns data/time

end
