class CharacterUserTest < Minitest::Test
  def setup
    @character_user = CharacterUser.new
  end

  def test_thorin_creator
    assert_equal @character_user.thorin_creator.name, "Thorin Oakenshield"
  end

  def test_stephen_creator
    assert_equal @character_user.stephen_creator.name, "Stephen Dedalus"
  end
end
