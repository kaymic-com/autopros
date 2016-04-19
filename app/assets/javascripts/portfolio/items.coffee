# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	# star tokens
	$('#portfolio_item_category_tokens').tokenInput '/portfolio/categories.json',
		theme: 'bootstrap'
		prePopulate: $('#portfolio_item_category_tokens').data('load')
