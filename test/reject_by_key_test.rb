require 'test_helper'

class RejectByKeyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RejectByKey::VERSION
  end

  def test_reject_by_key_by_string_key
    result = {'one' => 1, 'two' => 2, 'three' => 3}.reject_by_key('two')
    assert result.eql?({'one' => 1, 'three' => 3})
  end

  def test_reject_by_key_by_symbol_key
    result = {one: 1, two: 2, three: 3}.reject_by_key(:two)
    assert result.eql?({one: 1, three: 3})
  end

  def test_reject_by_key_in_case_of_no_match_key
    result = {one: 1, two: 2, three: 3}.reject_by_key('two')
    assert result.eql?({one: 1, two: 2, three: 3})
  end
end
