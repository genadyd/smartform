<div class="modal" id="form_processing_pop">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <div class="form-group ">
                    <label for="exampleInputEmail1">שאלה</label>
                    <input type="text" class="form-control form-control-lg" id="questionName" aria-describedby="textHelp" placeholder="שאלה">
                    <small id="emailHelp" class="form-text text-muted">שאלה</small>
                </div>

                <div class="processing_controls">
                    <nav class="controls_bar navbar navbar-light bg-light container">
                        <span class="add_quest text-success" data-toggle="modal" data-target="#form_processing_pop">
                            types:
                        </span>
                        <span class="types_list">
                            <?php foreach($page_data['inputs_types'] as $type): ?>
                                    <span class="text-info inputs_type" crypt="<?= $type['crypt'] ?>"><?= $type['element_title'] ?></span>
                            <?php endforeach; ?>
                        </span>
                    </nav>
                </div>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <table class="table table-hover answers_table">
                    <thead>
                    <tr>
                        <th>סוגים</th>
                        <th>כותרות</th>
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
                <button type="button" class="btn btn-danger processing_submit">שמור</button>
            </div>

        </div>
    </div>
</div>