class Helpers
    def self.current_user(session_hash)
        @user = User.find_by_id(session_hash[:user_id])
    end

    def self.is_logged_in?(session_hash)
       if User.find_by_id(session_hash[:user_id])
        true
       else
        false
       end
    end
end