# frozen_string_literal: true

class DataGuest
  # guestuserの投稿を削除
  def self.data_reset
    user = User.find_by(email: "guest@example.com")

    if user.present?
      user.books.destroy_all
    else
      Rails.logger.error("Guest user not found")
    end
  end
end
