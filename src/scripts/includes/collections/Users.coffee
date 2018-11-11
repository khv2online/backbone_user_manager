Users = Backbone.Collection.extend({
  model: User
  localStorage: new Backbone.LocalStorage('users-storage'),
  # url: "./ajax/users.json"
})