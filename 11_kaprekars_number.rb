# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 11 Kaprekar's Number
# Problem Statement:
# 9 is a Kaprekar number since
# 9 ^ 2 = 81 and 8 + 1 = 9
# 297 is also Kaprekar number since
# 297 ^ 2 = 88209 and 88 + 209 = 297.
# In short, for a Kaprekar number k with n-digits, if you square it and add
# the right n digits to the left n or n-1 digits, the resultant sum is k.
# Find if a given number is a Kaprekar number
class KaprekarsNumber
  # rubocop:disable Naming/MethodParameterName
  def kaprekar?(k)
    k_num_digits = k.to_s.length
    k_squared = (k**2).to_s
    (lhs_k_squared(k_num_digits, k_squared) + rhs_k_squared(k_num_digits, k_squared)) == k
  end
  # rubocop:enable Naming/MethodParameterName

  private

  def rhs_k_squared(k_num_digits, k_squared)
    # rubocop:disable Style/SlicingWithRange
    # Preferred is k_squared[-k_num_digits..] but this is not supported
    # in ancient versions of Ruby used by RubyMonk
    k_squared[-k_num_digits..-1].to_i
    # rubocop:enable Style/SlicingWithRange
  end

  def lhs_k_squared(k_num_digits, k_squared)
    # Note that RHS uses slice from end of string counting back number of digits in k
    # whereas LHS starts from start of string to index before start of RHS which
    # is either number of digits in k - 1 or 2 depending on if number of digits
    # in k squared string is even or odd (i.e. LHS and RHS are indexing in different
    # directions)
    lhs_end_index = k_squared.length.even? ? (k_num_digits - 1) : (k_num_digits - 2)
    k_squared[0..lhs_end_index].to_i
  end
end
