class User < ActiveRecord::Base
  STYLES = %w(
    default
    orange
    matrix
  )

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
