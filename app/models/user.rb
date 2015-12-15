class User < ActiveRecord::Base
  has_many :incoming_followings    , :foreign_key => 'followed_id'  , class_name: "Follow"
  has_many :outgoing_followers     , :foreign_key => 'follower_id'  , class_name: "Follow"
  has_many :followers               , through: :incoming_followings, source: :follower
  has_many :followings              , through: :outgoing_followers , source: :followed
end
