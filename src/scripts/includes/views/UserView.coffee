UserView = Backbone.View.extend({
  tagName: "TR",
  className: "UserList_tr"
  template: _.template(document.getElementById("user-template").innerHTML)
  initialize: ()->
    @listenTo(@model, "destroy", @remove)
    @listenTo(@model, 'change', @render)
  render: ()->
    @el.innerHTML = @template({user: @model.toJSON()})
    return @
  events:{
    "click .UserList_btn-remove": "clear"
    "click .UserList_btn-edit": "startEdit"
    "click .UserList_btn-cancel": "cancelEdit"
    "click .UserList_btn-save": "closeEdit"
  }

  clear: ()->
    @model.destroy()

  startEdit: ()->
    @el.classList.add("UserList_tr-edit")

  cancelEdit: ()->
    @el.classList.remove("UserList_tr-edit")

  closeEdit: ()->
    inputs = @el.querySelectorAll("input")
    userDetails = {}
    for input in inputs
      userDetails[input.name] = input.value

    validationError = @model.validate(userDetails)

    unless validationError
      @model.save(userDetails)
      @cancelEdit()
    else
      alert(validationError)
    
})