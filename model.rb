DataMapper::setup(:default, "sqlite://#{Dir.pwd}/board.db")

class Journal
    include DataMapper::Resource
    property :id, Serial
    property :created_at, DateTime
    property :title, String
    property :feeling, String
    property :weather, String
    property :content, Text
end

DataMapper.finalize

Journal.auto_upgrade!