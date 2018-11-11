do ->
  storedUsers = localStorage.getItem("users-storage")
  if !storedUsers or storedUsers.length is 0
    localStorage.setItem("users-storage", "87c66bc2-fb88-36b7-0803-097f2910ba2a,5586e8cf-63cc-1609-0947-430a01c74611,1193295d-ba0f-62b0-47a1-712fa7baa02a,d6a4acf3-9603-eb77-234f-39c5e99a3b5c")
    localStorage.setItem("users-storage-87c66bc2-fb88-36b7-0803-097f2910ba2a", '{"name":"Michael Dell","tel":"4546623232","id":"87c66bc2-fb88-36b7-0803-097f2910ba2a"}')
    localStorage.setItem('users-storage-5586e8cf-63cc-1609-0947-430a01c74611', '{"name":"Anthony Kiedis","tel":"4546623232","id":"5586e8cf-63cc-1609-0947-430a01c74611"}')
    localStorage.setItem('users-storage-1193295d-ba0f-62b0-47a1-712fa7baa02a', '{"name":"Buckethead","tel":"6646623232","id":"1193295d-ba0f-62b0-47a1-712fa7baa02a"}')
    localStorage.setItem('users-storage-d6a4acf3-9603-eb77-234f-39c5e99a3b5c', '{"name":"James Hetfield","tel":"1546623232","id":"d6a4acf3-9603-eb77-234f-39c5e99a3b5c"}')
    return

#=require ./includes/models/*.coffee
#=require ./includes/collections/*.coffee
#=require ./includes/views/*.coffee