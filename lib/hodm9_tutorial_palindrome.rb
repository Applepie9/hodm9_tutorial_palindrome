# frozen_string_literal: true

require_relative "hodm9_tutorial_palindrome/version"

module Hodm9TutorialPalindrome

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end

    private

      # Returns content for palindrome testing.
      def processed_content
        self.to_s.scan(/[a-z\d]/i).join.downcase
      end
end


class String
  include Hodm9TutorialPalindrome
end

class Integer
  include Hodm9TutorialPalindrome
end
