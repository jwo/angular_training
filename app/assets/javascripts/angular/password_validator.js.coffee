AngulaRails.factory "PasswordValidator", () ->
  self={}
  self.validatePassword = (password) ->
    message = ""
    if password.length < 8
      message = "Needs to be more than 8 characters."

    uppercase = /(?=.*[A-Z])/
    if !uppercase.test(password)
      message = "Needs to have at least 1 capital letter."

    number = /(?=.*[0-9])/
    if !number.test(password)
      message = "Needs to have at least 1 number."

    message

  self
