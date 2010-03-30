class SunspotGenerator < Rails::Generators::Base

  def self.source_root
    @source_root ||= File.expand_path("../templates", __FILE__)
  end

  def copy_initializer
    template "sunspot.yml", "config/sunspot.yml"
  end

  def copy_tasks
	template "sunspot_tasks.rake", "lib/tasks/sunspot_tasks.rake"
  end

end
