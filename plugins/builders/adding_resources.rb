class Builders::AddingResources < SiteBuilder
  def build
    resource = {
      find_in: "src/plugins/builders/adding_resource.rb",
      first_level: "via add_resource",
      second_level: {
        via_add_resource: "via add_resource"
      },
      content: <<~CONTENT
      ```
      first_level: via add_resource
      second_level:
        via_add_resource: \"via add_resource\"
        via_resource: not set
        via_config: \"via config\"
      ```
      CONTENT
    }

    add_resource :articles, "dynamic.md" do
      ___ resource
    end
  end
end