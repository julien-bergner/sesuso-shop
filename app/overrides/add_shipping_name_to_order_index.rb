Deface::Override.new(:virtual_path => %q{spree/admin/orders/index},
                     :insert_before => "[data-hook='admin_orders_index_header_actions']",
                     :name => "shipping_name_header",
                     :text => "<th>Kundenname</th>")

Deface::Override.new(:virtual_path => %q{spree/admin/orders/index},
                     :insert_before => "[data-hook='admin_orders_index_row_actions']",
                     :name => "shipping_name",
                     :text => %q{<td><%= "#{order.ship_address.firstname} #{order.ship_address.lastname}" %></td>})