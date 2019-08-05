<div class="one_simple_form_container hidden" crypt="<?=$form_object['crypt']?>" up="<?=$form_object['up']?>" form_order="<?=$form_object['form_order']?>">
    <nav class="form_container_header navbar navbar-light bg-light container">
        <h4 class="simple_title"><?=$form_object['simpleFormTitle']?></h4>
        <div class="controls">
            <span class="simple_edit bg-warning text-light" data-toggle="modal" data-target="#simple_form_processing_pop">
                            <i class="material-icons">
                              create
                            </i>
                        </span>
            <span class="simple_delete bg-danger text-light" >
                            <i class="material-icons">
                              clear
                            </i>
                        </span>
<!--            <span class="simple_elements_open bg-info text-light">-->
<!--                            <i class="material-icons">-->
<!--                              keyboard_arrow_left-->
<!--                            </i>-->
<!--                        </span>-->
        </div>
    </nav>
    <div class="siple_wrapper_body">
        <table class="table table-striped simple_form_fields">
            <thead>
            <th>type</th>
            <th>title</th>
            <th>placeholder</th>
            <th>value</th>
            </thead>
            <tbody>
        <?php foreach($form_object['fields'] as $field_key => $field): ?>
        <tr class="one_field" crypt="<?=$field_key ?>">
            <td class="type_col"><?=$field['type'] ?></td>
            <td class="title_col"><?=$field['title'] ?></td>
            <td class="placeholder_col"><?=$field['placeholder'] ?></td>
            <td class="value_col"><?=$field['value'] ?></td>
        </tr>
        <?php endforeach;?>
            </tbody>
        </table>
    </div>
</div>