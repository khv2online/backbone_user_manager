User = Backbone.Model.extend({
  # urlRoot: "./ajax/users"
  localStorage: new Backbone.LocalStorage('users-storage'),
  initialize: ->
    @checkTelRegexp =  /\+{0,1}\d[\d|-]{4,40}/
  validate: (attrs, options)->
    err = false
    if attrs.name.length is 0
      err = "the name field is required"
    else if attrs.tel.length is 0
      err = "the phone field is required"
    else if !@checkTelRegexp.test(attrs.tel)
      err = "the entered phone is't valid"

    return err
})