<td class="UserList_td">
	<div class="UserList_tdInner">
		<span class="UserList_label"><%= user.name %></span>
		<input class="UserList_inRowInput form-control" name="name" type="text" value="<%= user.name %>">
	</div>
</td>
<td class="UserList_td">
	<div class="UserList_tdInner">
		<span class="UserList_label"><%= user.tel %></span>
		<input class="UserList_inRowInput form-control" name="tel" type="text" value="<%= user.tel %>">
	</div>
</td>
<td class="UserList_td">
	<button class="UserList_btn UserList_btn-save btn btn-success btn-sm" type="button">save</button> 

	<button class="UserList_btn UserList_btn-edit btn btn-primary btn-sm" type="button">edit</button> 

	<button class="UserList_btn UserList_btn-remove btn btn-danger btn-sm" type="button">remove</button> 

	<button class="UserList_btn UserList_btn-cancel btn btn-sm" type="button">cancel</button>
</td>
