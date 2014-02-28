Deface::Override.new(:virtual_path => %q{spree/admin/orders/index},
                     :insert_before => "[data-hook='admin_orders_index_header_actions']",
                     :name => "shipping_name_header",
                     :text => %q{<th><%= "#{t('sesuso.customer_name')}" %></th>})

Deface::Override.new(:virtual_path => %q{spree/admin/orders/index},
                     :insert_before => "[data-hook='admin_orders_index_row_actions']",
                     :name => "shipping_name",
                     :text => %q{<td><%= "#{order.ship_address.firstname} #{order.ship_address.lastname}" %></td>})