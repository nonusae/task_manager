User.create(email: "test@test.com",password:"asdfgh",password_confirmation:"asdfgh")
User.create(email: "test_again@test.com",password:"asdfgh",password_confirmation:"asdfgh")
User.create(email: "forever@reward.com",password:"asdfgh",password_confirmation:"asdfgh")
User.create(email: "shipnity@test_test.com",password:"asdfgh",password_confirmation:"asdfgh")





Task.create(description: "Open this mock-up in Adobe Fireworks",deadline: 5.days.from_now, priority: 10, user_id: 1)
Task.create(description: "Attentively check the file",deadline: 10.days.from_now ,priority: 2, user_id: 2)
Task.create(description: "Write HTML & CSS", deadline: 3.days.ago ,priority: 5, user_id: 1)
Task.create(description: "Add Javascript to implement adding / editing / removing for todo items and list taking into account as more uses cases as possible",deadline: 11.days.from_now, priority: 3, user_id: 3)



	<td class="text-center", id="checkbox-td-<%= task.id %>, style="display:none" ">
		<span class= "glyphicon glyphicon-th-list check_box_before", data-id= <%= task.id %> ></span>
	</td>