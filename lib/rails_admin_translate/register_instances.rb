module RegisterInstances
  extend ActiveSupport::Concern

  included do
    register_instance_option :translations_field do
      (name.to_s + '_translations').to_sym
    end

    register_instance_option :localized? do
      @abstract_model.model_name.constantize.public_instance_methods.include?(translations_field)
    end

    register_instance_option :tabbed do
      RailsAdminTranslate.tabbed
    end

    register_instance_option :allowed_methods do
      localized? ? [method_name, translations_field] : [method_name]
    end
  end
end
