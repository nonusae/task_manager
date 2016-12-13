class User < ApplicationRecord
  attr_accessor :comments_attributes	
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
