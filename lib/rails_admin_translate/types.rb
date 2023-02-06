module RailsAdmin
  module Config
    module Fields
      module Types
        RailsAdmin::Config::Fields::Types::Text.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_textml : :form_text
          end
        end

        RailsAdmin::Config::Fields::Types::CKEditor.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_ck_editorml : :form_ck_editor
          end
        end

        RailsAdmin::Config::Fields::Types::CodeMirror.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_code_mirrorml : :form_code_mirror
          end
        end

        RailsAdmin::Config::Fields::Types::Wysihtml5.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_wysihtml5ml : :form_wysihtml5
          end
        end

        RailsAdmin::Config::Fields::Types::String.class_eval do
          include RegisterInstances

          register_instance_option :partial do
            localized? ? :form_fieldml : :form_field
          end
        end
      end
    end
  end
end
