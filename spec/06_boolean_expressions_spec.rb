# frozen_string_literal: true

# Specification for RubyMonk Primer Problem 6 Hiring Programmers - Boolean Expressions in Ruby

require_relative '../06_boolean_expressions'

# rubocop:disable RSpec/DescribeClass
RSpec.describe 'is_an_experienced_programmer' do
  let(:acceptable_years) { 2 }
  let(:acceptable_points) { 500 }
  let(:worked_with_ruby) { ['Ruby'] }
  let(:acceptable_age) { 15 }
  let(:valid_candidate) do
    Candidate.new(years_of_experience: acceptable_years,
                  languages_worked_with: worked_with_ruby,
                  applied_recently: false,
                  age: acceptable_age)
  end

  it 'a programmer who has the 3 years of experience is accepted' do
    three_year_candidate = valid_candidate
    three_year_candidate.years_of_experience = 3
    expect(valid_ruby_candidate?(three_year_candidate)).to be true
  end

  it 'a programmer with 600 github points is accepted' do
    sixhundred_points_candidate = valid_candidate
    sixhundred_points_candidate.github_points = 600
    expect(valid_ruby_candidate?(sixhundred_points_candidate)).to be true
  end

  it 'programmers who do not list Ruby among languages that they\'ve worked with are not considered' do
    no_ruby_candidate = valid_candidate
    no_ruby_candidate.languages_worked_with = ['Python']
    expect(valid_ruby_candidate?(no_ruby_candidate)).to be false
  end

  it 'a programmer who has applied recently is not considered' do
    recently_applied_candidate = valid_candidate
    recently_applied_candidate.applied_recently = true
    expect(valid_ruby_candidate?(recently_applied_candidate)).to be false
  end

  it 'programmers with neither 2 years experience nor 500 Github points are not considered' do
    inexperienced_candidate = valid_candidate
    inexperienced_candidate.years_of_experience = 1
    inexperienced_candidate.github_points = 499
    expect(valid_ruby_candidate?(inexperienced_candidate)).to be false
  end

  it 'smart kids are sadly not considered' do
    smart_kid = valid_candidate
    smart_kid.age = 14
    expect(valid_ruby_candidate?(smart_kid)).to be false
  end
end
# rubocop:enable RSpec/DescribeClass
