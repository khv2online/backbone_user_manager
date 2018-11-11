UserListView = Backbone.View.extend({
  el: ".UserList",
  initialize: ()->
    @tableWrapEl = this.el.querySelector(".UserList_tableBody")
    @form = this.el.querySelector(".UserList_addForm")
    @collection = new Users()
  render: ()->
    @collection.fetch({
      success: (users)=>
        for user in users.models
          @addRow(user)
      })
 
  events:
    "submit .UserList_addForm": "saveUser"
    
  saveUser: (event)->
    event.preventDefault()

    form = event.currentTarget

    userDetails = {}

    for input in form.elements
      if input.tagName isnt "BUTTON" and input.type isnt "submit"
        userDetails[input.name] = input.value

    user = new User(userDetails)
    if user.isValid()
      user.save()
      @collection.add(user)
      @addRow(user)
      @form.reset()
    else
      alert(user.validationError)

  addRow: (user)->
    userView = new UserView({ model: user })
    @tableWrapEl.appendChild(userView.render().el)
    
})