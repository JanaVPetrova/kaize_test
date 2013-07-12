require "kaize_test/character"

class CharacterUser
  def thorin_creator
    thorin = Character.new

    thorin.name = "Thorin Oakenshield"
    thorin.quote = "Some courage and some wisdom, blended in measure. If more of us valued food and cheer and song above hoarded gold, it would be a merrier world"
    thorin
  end

  def stephen_creator
    stephen = Character.new
    stephen.name = "Stephen Dedalus"
    stephen
  end
end