module Spree
	class AbilityDecorator
		include CanCan::Ability
	 
		def initialize(user)
		  user ||= User.new

      if user.respond_to?(:has_spree_role?) && user.has_spree_role?('Shop-Manager')

        can [:admin, :manage], Order
        can [:admin, :manage], Adjustment
        can [:admin, :manage], Payment
        can [:admin, :manage], Shipment
        can [:admin, :manage], ReturnAuthorization

        #can [:admin, :index, :show]
        can :sales_total, :reports
		    
      end

		end
	end
	
	Ability.register_ability(AbilityDecorator)
end


