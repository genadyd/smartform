<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 08/07/2019
 * Time: 11:09
 */

?>
<div class="question_show_container d-flex flex-row-reverse ">
<div class="question_answer_box" question_crypt="<?=$new_question_properties['questionCrypt']?>">
    <div class="question_answer_header d-flex bg-secondary text-white">
        <div class="question_title">
            <h5><?=$new_question_properties['questionName']?></h5>
        </div>
        <div class="question_controls">
            <span class="edit bg-warning"  data-toggle="modal" data-target="#form_processing_pop">
                            <i class="material-icons">
                              create
                            </i>
                        </span>
            <span class="edit bg-danger question_delete">
                            <i class="material-icons">
                              clear
                            </i>
                        </span>
        </div>
    </div>
    <div class="question_answer_body">
    <?php if(isset($new_question_properties['answersObject'])):
        foreach ($new_question_properties['answersObject'] as $answer_key => $answer):
//            formCrypt
        $form_id = isset($get_data['questinnationCrypt'])? $get_data['questinnationCrypt'] : $get_data['formCrypt'];
            $is_parent =  $this->forms_model->checkAnswerIfParent($answer_key, $form_id);
        ?>
        <div class="one_answer_show_box" answer_crypt="<?=$answer_key?>">
            <div class="one_answer_header d-flex bg-light text-secondary">
                <div class="one_answer_title">
                    <h6><?=$answer['answerTytle']?></h6>
                </div>
                <div class="one_answer_controls">
                    <?php if($is_parent == 0): ?>
                                <span class="bg-warning add_question text-light" data-toggle="modal" data-target="#form_processing_pop">
                                    <i class="material-icons">
                                       add
                                    </i>
                                </span>
                    <?php endif; ?>
                   <?php if($is_parent>0): ?>
                                <span class="bg-info open_close_question_box text-light">
                                    <i class="material-icons">
                                      keyboard_arrow_left
                                    </i>
                                </span>
                    <?php endif; ?>
                </div>
            </div>
            <div class="one_answer_body hidden">
                <div class="question_show_container"></div>
            </div>
        </div>
    <?php
    endforeach;
    endif; ?>
    </div>
</div>

</div>
