---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

<% site.collections.articles.resources.each do |article| %>
  <h2>**<%= article.basename_without_ext %>**<h2>
  <p>Find in <code><%= article.data.find_in %></code></p>
  <ul>
    <li>url: <%= article.relative_url %></li>
    <li>first_level: <%= article.data.first_level %></li>
    <li>second_level:<br />
      via_resource: <%= article.data.second_level.via_resource || "not set" %><br />
      via_add_resource: <%= article.data.second_level.via_add_resource  || "not set" %><br />
      via_config: <%= article.data.second_level.via_config || "not set" %>
    </li>

    <li>expected: <%= article.content %></li>
  </ul>
<% end %>
