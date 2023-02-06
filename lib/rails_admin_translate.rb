require 'rails_admin_translate/engine'
require 'rails_admin'

require 'active_support/concern'
require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'
require 'rails_admin/config/fields/types/string'
require 'rails_admin/config/fields/types/text'
require 'rails_admin/config/fields/types/ck_editor'
require 'rails_admin/config/fields/types/code_mirror'
require 'rails_admin/config/fields/types/wysihtml5'

require 'rails_admin_translate/register_instances'
require 'rails_admin_translate/types'

module RailsAdminTranslate
  mattr_accessor :tabbed
  @@tabbed = false
end

