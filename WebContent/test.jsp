<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%var items = cart.items();var settings = cart.settings();var hasItems = !!items.length;var priceFormat = { format: true, currency: cart.settings("currency_code") };var totalFormat = { format: true, showCode: true };%>
	<form method="post"
		class="<% if (!hasItems) { %>sbmincart-empty<% } %>"
		action="<%= config.action %>" target="<%= config.target %>">
		<button type="button" class="sbmincart-closer">&times;</button>
		<ul>
			<% for (var i= 0, idx = i + 1, len = items.length; i < len; i++, idx++) { %>
			<li class="sbmincart-item">
				<div class="sbmincart-details-name">
					<a class="sbmincart-name" href="<%= items[i].get("href") %>"><%= items[i].get("hub_item") %></a>
					<ul class="sbmincart-attributes">
						<% if (items[i].get("item_number")) { %>
						<li><!--<%= items[i].get("item_number") %> --> <input type="hidden"
							name="item_number_<%= idx %>"
							value="<%= items[i].get("item_number") %>" /></li>
						<% } %>
						<% if (items[i].discount()) { %>
						<li><%= config.strings.discount %> <%= items[i].discount(priceFormat) %>
							<input type="hidden" name="discount_amount_<%= idx %>"
							value="<%= items[i].discount() %>" /></li>
						<% } %>
						<% for (var options = items[i].options(), j = 0, len2 = options.length; j < len2; j++) { %>
						<li><%= options[j].key %>: <%= options[j].value %> <input
							type="hidden" name="on<%= j %>_<%= idx %>"
							value="<%= options[j].key %>" /> <input type="hidden"
							name="os<%= j %>_<%= idx %>" value="<%= options[j].value %>" />
						</li>
						<% } %>
					</ul>
				</div>
				<div class="sbmincart-details-quantity">
					<input class="sbmincart-quantity" data-sbmincart-idx="<%= i %>"
						name="quantity_<%= idx %>" type="text" pattern="[0-9]*"
						value="<%= items[i].get("quantity") %>" autocomplete="off" />
				</div>
				<div class="sbmincart-details-remove">
					<button type="button" class="sbmincart-remove"
						data-sbmincart-idx="<%= i %>">&times;</button>
				</div>
				<div class="sbmincart-details-price">
					<span class="sbmincart-price"><%= items[i].total(priceFormat) %></span>
				</div> <input type="hidden" name="hub_item_<%= idx %>"
				value="<%= items[i].get("hub_item") %>" /> <input type="hidden"
				name="amount_<%= idx %>" value="<%= items[i].amount() %>" /> <input
				type="hidden" name="shipping_<%= idx %>"
				value="<%= items[i].get("shipping") %>" /> <input type="hidden"
				name="shipping2_<%= idx %>" value="<%= items[i].get("shipping2") %>" />
			</li>
			<% } %>
		</ul>
		<div class="sbmincart-footer">
			<% if (hasItems) { %>
			<div class="sbmincart-subtotal">
				<%= config.strings.subtotal %>
				<%= cart.total(totalFormat) %>
			</div>
			<button class="sbmincart-submit" type="submit"
				data-sbmincart-alt="<%= config.strings.buttonAlt %>">
				<%- config.strings.button %>
			</button>
			<% } else { %>
			<p class="sbmincart-empty-text"><%= config.strings.empty %></p>
			<% } %>
		</div>
		<input type="hidden" name="cmd" value="_cart" /> <input type="hidden"
			name="upload" value="1" />
		<% for (var key in settings) { %>
		<input type="hidden" name="<%= key %>" value="<%= settings[key] %>" />
		<% } %>
	</form>
</body>
</html>