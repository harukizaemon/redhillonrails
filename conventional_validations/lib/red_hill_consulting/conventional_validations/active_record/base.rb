module RedHillConsulting::ConventionalValidations::ActiveRecord
  module Base
    def self.included(base)
      base.extend(ClassMethods)
      base.alias_method_chain :valid?, :conventional_validations
    end

    def valid_with_conventional_validations?
      self.class.conventional_validations
      valid_without_conventional_validations?
    end

    module ClassMethods    
      def conventional_validations
        unless @conventional_validations_applied
          @conventional_validations_applied = true
          column_names.each do |column_name|
            attr_type = column_name.split("_").last
            method_name = "validates_#{attr_type}".to_sym
            send(method_name, column_name.to_sym) if respond_to?(method_name)
          end if base_class? && !abstract_class?
        end
      end
    end
  end
end
