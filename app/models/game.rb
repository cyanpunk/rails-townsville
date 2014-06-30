class Game < ActiveRecord::Base

  belongs_to :owner, :class_name => 'Account'

  has_many :players
  has_many :accounts, :through => :players, :source => :account

  # state_machine :status, :initial => :pending do
  #   # before_transition :pending => any - :pending#, :do => :put_on_seatbelt
  #   after_transition :on => :preparing, :do => :assign_roles
  #
  #   event :prepare do
  #     transition :pending => :preparing
  #   end
  #
  #   event :start do
  #     transition :preparing => :started
  #   end
  #
  #   event :end do
  #     transition :started => :finished
  #   end
  # end
  #
  # state_machine :daytime, :initial => :night do
  #   # morning
  #   # noon
  #   # evening
  #   # night
  # end

  def engage account
    self.owner = account if self.players_count == 0
    self.accounts.append account
  end

end
