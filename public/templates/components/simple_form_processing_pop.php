<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 16/07/2019
 * Time: 13:25
 */
?>
<div class="modal" id="simple_form_processing_pop">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="simple_form_title">
                    <div class="form-group">
                        <label for="simple_form_title">Simple Form Title:</label>
                        <input type="text" class="form-control" id="simple_form_title" placeholder="title">
                    </div>
                </div>
                <div class="processing_controls">
                    <nav class="controls_bar navbar navbar-light bg-light container">
                        <button class="add_field btn btn-outline-success" t="email">
                           email
                        </button>
                        <button class="add_field btn btn-outline-success" t="name">
                           name
                        </button>
                        <button class="add_field btn btn-outline-success" t="phone">
                           phone
                        </button>
                        <button class="add_field btn btn-outline-success" t="text">
                           text
                        </button>
                    </nav>
                </div>
                <div class="form-check">
                    <span class="form-check-label">Up</span>
                        <input type="checkbox" checked class="form-check-input" value="1">

                </div>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <table class="table table-hover answers_table">
                    <thead>
                    <tr>
                        <th>סוגים</th>
                        <th>כותרות</th>
                        <th>placeholder</th>
                        <th>ערכים</th>
                        <th>delete</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger simple_form_processing_submit">שמור</button>
            </div>

        </div>
    </div>
</div>
