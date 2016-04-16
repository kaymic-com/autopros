# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	# change color of button if field removed
	$(document).on 'nested:fieldAdded:attachments nested:fieldRemoved:attachments', (event) ->
		console.log 'field removed'
		$submitBtn = $('input[type="submit"]')
		$submitBtn.addClass('btn-warning')
		return

	# populate readonly text input of selected file
	$(document).on 'change', '.btn-file :file', ->
		numFiles = if $(this).get(0).files then $(this).get(0).files.length else 1
		label = $(this).val().replace(/\\/g, '/').replace(/.*\//, '')
		$(this).trigger 'fileselect', [numFiles, label]
		return
	$('.btn-file :file').on 'fileselect', (event, numFiles, label) ->
		input = $(this).parents('.input-group').find(':text')
		log = if numFiles > 1 then numFiles + ' files selected' else label
		input.val log if input.length
		return
