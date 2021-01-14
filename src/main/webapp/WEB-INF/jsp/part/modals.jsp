<%--login modal--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true" style="z-index: 2999;">
    <div class="modal-dialog" role="document">
        <form action="/login" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="account_name" class="col-form-label">Username :</label>
                        <input type="text" class="form-control" id="account_name" name="username">
                    </div>
                    <div class="form-group">
                        <label for="password_input" class="col-form-label">Password :</label>
                        <input type="password" class="form-control" id="password_input" name="password">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- Change class .modal-sm to change the size of the modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/insert" method="post">
                <div class="modal-body">

                    <label>Username</label>
                    <input type="text" name="username"/><br/>
                    <label>Password</label>
                    <input type="text" name="password"/><br/>
                    <label>First name</label>
                    <input type="text" name="firstname"/><br/>
                    <label>Last name</label>
                    <input type="text" name="lastname"/><br/>


                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
