$(document).ready((function(){$('[data-bb-toggle="test-email-send"]').on("click",(function(t){t.preventDefault();var e=$(t.currentTarget),n=new FormData(e.closest("form")[0]);Botble.showButtonLoading(e),$httpClient.make().postForm(route("settings.email.update"),n).then((function(t){var e=t.data;Botble.showSuccess(e.message),$("#send-test-email-modal").modal("show")})).finally((function(){Botble.hideButtonLoading(e)}))})),$("#send-test-email-btn").on("click",(function(t){t.preventDefault();var e=$(t.currentTarget);Botble.showButtonLoading(e),$httpClient.make().post(route("settings.email.test.send"),{email:e.closest(".modal-content").find("input[name=email]").val()}).then((function(t){var n=t.data;Botble.showSuccess(n.message),e.closest(".modal").modal("hide")})).finally((function(){Botble.hideButtonLoading(e)}))}))}));