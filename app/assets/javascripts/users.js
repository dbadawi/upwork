// Simple validation of new user registration
$(document).ready(function () {
  $("#new_user").validate({
    debug: false,
    rules: {
      "user[username]": { remote:"/users/check_username" },
    }
  });
  // Validation message with I18n locale
  $.validator.messages.remote = I18n.users.validations.username_in_use;
});
