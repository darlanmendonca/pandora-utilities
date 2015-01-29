regularExpressions = 
	name: /^[a-zA-Z]{3,}(\s[a-zA-Z]{3,})?/
	# fullname: /^[a-zA-Z]{3,}(\s[a-zA-Z]{3,}){1,}/ - need fix, 'darlan de almeida' make false, because 'de' in middle
	firstname: /^[A-z]{3,}$/
	lastname: /^[a-zA-Z]{3,}(\s)?/
	email: /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
	password: /^.{6,12}$/
	objectId: /^[A-Za-z0-9]{24}$/
	hexColor: /^#([0-9a-f]{3}|[0-9a-f]{6})$/i
	zipcode: /^[0-9]{8}$/
	zipcodeMask: /^[0-9]{5}-[0-9]{3}$/
	state: /^[a-zA-Z]{2}$/
	latitude: /^(\-?\d+(\.\d+)?)$/
	longitude: /^(\-?\d+(\.\d+)?)$/
	phone: /^[0-9]{10,11}$/
	phoneMask: /^\([0-9]{2}\)\s[0-9]{4,5}-[0-9]{4}$/



regularExpressionsHtml = {} 
regularExpressionsHtml[key] = String(value).replace(/\/(.)?/g, '') for key, value of regularExpressions


module.exports = 
	regularExpressions: regularExpressions
	regularExpressionsHtml: regularExpressionsHtml

	name: (str)->
		regularExpressions.name.test str

	# fullname: (str)->
	# 	regularExpressions.fullname.test str.trim()
	
	firstname: (str)->
		regularExpressions.firstname.test str

	lastname: (str)->
		regularExpressions.lastname.test str

	email: (str)->
		regularExpressions.email.test str

	password: (str)->
		regularExpressions.password.test str

	duplicated: (str)->
		pattern = 'insertDocument :: caused by :: 11000 E11000 duplicate key error index'
		str.indexOf pattern is 0

	objectId: (str)->
		regularExpressions.objectId.test str

	hexColor: (str)->
		regularExpressions.hexColor.test str

	zipcode: (str)->
		regularExpressions.zipcode.test str

	state: (str)->
		regularExpressions.state.test str

	latitude: (str)->
		regularExpressions.latitude.test str

	longitude: (str)->
		regularExpressions.longitude.test str

	phone: (str)->
		regularExpressions.phone.test str