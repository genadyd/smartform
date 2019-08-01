<tr class="answer_string" answer_crypt="<?php echo(md5(microtime())) ?>">
    <td class="answer_element" element_crypt="<?=$element_data['crypt']?>"><?=$element_data['element_title']?></td>
    <td class="answer_text">
        <div class="form-group">
            <input type="text" name="answer_title" class="form-control" >
        </div>
    </td>
    <td class="answer_value">
        <div class="form-group">
            <input type="text" name="answer_value" class="form-control" >
        </div>
    </td>
    <td class="delete_answer">
        <span ><i class="material-icons">
delete_outline
</i></span>
    </td>

</tr>
    