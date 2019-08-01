<?php
/**
 * Created by PhpStorm.
 * User: genady
 * Date: 6/26/19
 * Time: 11:32 AM
 */
?>
<div class="left_panel col-sm-3">
    <div class="list_header">
        <h2> אדיפיסינג אלית</h2>
    </div>
    <div class="add_new text-success hidden">
        <i class="material-icons">
            add_to_queue
        </i>
    </div>
    <ul class="list">
        <?php
        foreach ($page_data['formsList'] as $one_form) :?>
            <li class="one_questination" crypt="<?= $one_form['crypt'] ?>">
                <span class="q_text text-secondary text-break"><?= $one_form['form_name'] ?></span>
                <span class="controls">
               <span class="edit_icon text-secondary">
               <i class="material-icons">
                   create
               </i>
               </span>
               <span class="delete_icon text-secondary">
               <i class="material-icons">
                    delete_outline
               </i>
               </span>
               </span>
            </li>
        <?php endforeach;?>
    </ul>
</div>
