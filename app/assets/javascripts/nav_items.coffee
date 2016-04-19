# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	# sortable nav items

	tableWidthHelper = (e, ui) ->
		ui.children().each ->
			$(this).width $(this).width()
			return
		ui

	$('#nav_items').sortable
		placeholder: '.table tr'
		helper: tableWidthHelper
		axis: 'y'
		handle: '.handle'
		update: ->
			console.log('sorted')
			$.post $(this).data('sort-path'), $(this).sortable('serialize')
