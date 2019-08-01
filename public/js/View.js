class View{
    constructor(){

    }
    newQuestnnationAddToList(data){
$('.left_panel .list').append('<li class="one_questination" crypt="'+data.crypt+'">' +
    '<span class="q_text text-secondary text-break">'+data.form_name+ '</span>' +
    '<span class="controls">' +
    '<span class="edit_icon text-secondary"><i class="material-icons">' +
    'create' +
    '</i></span>' +
    '<span class="delete_icon text-secondary"><i class="material-icons">' +
    'delete_outline' +
    '</i></span>' +
    '</span>'+
    '</li>');
$('#questinary_name').val('');
    }
    editQuestnnationAddToList(data){
        $('.left_panel .list .one_questination[crypt='+data.crypt+']').removeClass('in_edit').removeClass('alert-primary').find('.q_text').text(data.form_name);
        $('#questinary_name').val('');
        $('.add_new').addClass('hidden');
        let processing_crypt = $('.form_processing_container').attr('form_crypt')||0;
        if(processing_crypt == data.crypt){
            $('.form_processing_container .form_title').text(data.form_name)
        }
    }
    formProcessingSaveCollback(data, that){
        if(data!='') {
            $('#form_processing_pop').find('#questionName').val('').end().find('.close').click();
            let html = data;
            if ($('.form_processing_container_body .one_answer_show_box.in_processing').length > 0) {
                $('.form_processing_container_body .one_answer_show_box.in_processing ')
                    .find('.one_answer_header .one_answer_controls .add_question').replaceWith('' +
                    '<span class="bg-info text-white open_close_question_box open">' +
                    '<i class="material-icons">' +
                    'keyboard_arrow_left' +
                    '</i>' +
                    '</span>' +
                    '').end().removeClass('in_processing').find('.one_answer_body').removeClass('hidden').html(html);

            } else if ($('.form_processing_container_body .one_answer_show_box.getter_data').length > 0) {
                that.closest('.one_answer_show_box').find('.one_answer_body').removeClass('hidden').html(html).end().removeClass('getter_data');
                    that.addClass('open');
            }
            else {
                $('.form_processing_container_body').html(html);
            }
        }
       }

    addAnswerToProcessingTableCollback(data){
        $('.answers_table').append(data);
    }
    insertFirstQuestionToPage(html){
        $('.form_processing_container_body').html(html);
        $('.simple_forms_wrapper.hidden').removeClass('hidden')
    }
    deleteOneQuestionCollback(data ,that){
        let questionBodyContainer = that.closest('.one_answer_body'),
            controlButton = questionBodyContainer.closest('.one_answer_show_box').children('.one_answer_header').find('.one_answer_controls .open_close_question_box ');
        controlButton.replaceWith(''+
            '<span class="bg-warning text-white add_question" data-toggle="modal" data-target="#form_processing_pop">'+
            '<i class="material-icons">add </i>'+
            '</span>');
            questionBodyContainer.addClass('hidden').html('');
    }
    deleteOneQuestinnationCollback(data, that){
        that.closest('.one_questination').remove();
        $('.form_processing_container[form_crypt='+data+']').find('.form_processing_container_body').html('')
            .end().find('.container_header').find('.form_title').text('').end().find('.add_quest').addClass('hidden')
            .end().end().removeAttr('form_crypt');
    }
    questionEditorEnableCollback(data, that){
        let pop = $('#form_processing_pop').addClass('edit_pop').attr('question_crypt',data.questionCrypt),
            answersHtml = '';

        pop.addClass('edit_pop').attr('question_crypt',data.questionCrypt);
        pop.find('#questionName').val(data.questionName);
        $.each(data.answersObject, function (key, answer) {
            answersHtml += '<tr class="answer_string" answer_crypt="'+answer.crypt+'">' +
                '    <td class="answer_element" element_crypt="'+answer.element_crypt+'">'+answer.type+'</td>' +
                '    <td class="answer_text">' +
                '        <div class="form-group">' +
                '            <input type="text" name="answer_title" class="form-control" value="'+answer.answerTytle+'" >' +
                '        </div>' +
                '    </td>' +
                '    <td class="answer_value">' +
                '        <div class="form-group">' +
                '            <input type="text" name="answer_value" class="form-control" value="'+answer.value+'" >' +
                '        </div>' +
                '    </td>' +
                '    <td class="delete_answer">' +
                '        <span ><i class="material-icons">' +
                'delete_outline' +
                '</i></span>' +
                '    </td>' +
                '</tr>'
        })
        $('.answers_table tbody').html(answersHtml);
    }
    formProcessingEditSaveCollback(data, that){
        let questionBox = $('.question_answer_box[question_crypt='+data.questionCrypt+']'),
            questionHeader = questionBox.find('.question_answer_header '),
            popBox = that.closest('#form_processing_pop');
    //   change question name ====================
        questionHeader.find('.question_title h5').text(data.questionName);
    //    change answers data =====================================
        $.each(data.answersObject, function (key, answer) {
            let answerBox = questionBox.find('.question_answer_body .one_answer_show_box[answer_crypt='+key+']');
            if(answerBox.length > 0) {
                answerBox.children('.one_answer_header').find('.one_answer_title h6').text(answer.answerTytle);
            }else{
               let ansBoxHtml = '<div class="one_answer_show_box" answer_crypt="' + key + '">' +
                   '            <div class="one_answer_header d-flex bg-light text-secondary">' +
                   '                <div class="one_answer_title">\n' +
                   '                    <h6>' + answer.answerTytle + '</h6>' +
                   '                </div>' +
                   '                <div class="one_answer_controls">' +
                   '                    <span class="bg-warning text-white add_question" data-toggle="modal" data-target="#form_processing_pop">' +
                   '                       <i class="material-icons">' +
                   '                          add' +
                   '                       </i>' +
                   '                    </span>' +
                   '                 </div>' +
                   '            </div>' +
                   '            <div class="one_answer_body hidden">' +
                   '                <div class="question_show_container"></div>' +
                   '            </div>' +
                   '        </div>';
               $('.question_answer_box[question_crypt='+data.questionCrypt+'] .question_answer_body').append(ansBoxHtml);
            }
        })
        popBox.find('.close').click();
    }
    oneAnswerDeleteCollback(data, that){
        $('.one_answer_show_box[answer_crypt='+data+']').remove();
        $('.answer_string[answer_crypt='+data+']').remove();
    }
    addSimpleFormRow(html, that){
       $('#simple_form_processing_pop .answers_table tbody').append(html)
    }
    simpleFormProcessingSave(html, that){
        let formContainer = $(html).filter('.one_simple_form_container'),
            crypt = formContainer.attr('crypt'),
            formOrder = formContainer.attr('form_order'),
            up = formContainer.attr('up'),
            addedClass = up ==1 ? '.up_wrapper': '.bottom_wrapper';
        if($('.simple_forms_wrapper'+addedClass).is(':not(.el_hid)')) {
            formContainer.removeClass('hidden');
        }
        $('.simple_forms_wrapper'+addedClass+' .simple_forms_wrapper_body').append(formContainer);
        $('#simple_form_processing_pop .modal-header .close').click();
    }
    getSimleFormsObject(html){
        $('.up_wrapper .simple_forms_wrapper_body, .bottom_wrapper .simple_forms_wrapper_body').html('')
        let upForms = $(html).filter('.one_simple_form_container[up=1]');
        let bottomForms = $(html).filter('.one_simple_form_container[up=0]');
        upForms.each(function (key, val) {
            $('.up_wrapper .simple_forms_wrapper_body').append(val);
        })
        bottomForms.each(function (key, val) {
            $('.bottom_wrapper .simple_forms_wrapper_body').append(val);
        })

        // $('.up_wrapper .simple_forms_wrapper_body').html(html);
    }
    getOneSimpleFormJsonData(data) {
        let popContainer = $('#simple_form_processing_pop'),
            titleInput = popContainer.find('#simple_form_title'),
            elementsTable = popContainer.find('.answers_table tbody'),
            elementsHtml = '',
            objectData = data.simple_array,
            checkBox = popContainer.find('input[type=checkbox]');
        if (objectData.up == 1) {
            checkBox.attr('checked', 'checked');
        }
        else {

        checkBox.removeAttr('checked');
    }
        titleInput.val(objectData.title);
        $.each(objectData.elements, function (key, val) {
            elementsHtml +=' <tr class="one_row" crypt="'+key+'">'+
                '<td class="field_type">'+val.type+'</td>'+
                '<td><input type="text" class="field_title" value="'+val.title+'"></td>'+
                '<td><input type="text" class="field_placeholder" value="'+val.placeholder+'"></td>'+
                '<td><input type="text" class="field_val" value="'+val.value+'"></td>'+
                '<td class="element_delete">' +
                '<span>' +
                '<i class="material-icons"> delete_outline </i>'+
                '</span>' +
                '</td>' +
                ' </tr>';
        })
        elementsTable.html(elementsHtml);
        popContainer.find('.simple_form_processing_submit').addClass('in_edit');
    }
    simpleFormProcessingEditSave(data){
        console.log(data);
       let popContainer = $('#simple_form_processing_pop'),
           formElements = data.fields,
           oneSimleFormWrapper = $('.simple_forms_wrapper .one_simple_form_container[crypt='+data.simpleFormCrypt+']');
        oneSimleFormWrapper.find('.simple_title').text(data.simpleFormTitle);
        popContainer.find('.modal-header .close').click();
        popContainer.removeAttr('simple_form_crypt');
        popContainer.find('.simple_form_processing_submit').removeClass('in_edit');
        $.each(formElements, function (key, val) {
            let curentRow = oneSimleFormWrapper.find('.one_field[crypt='+key+']');
            if(curentRow.length>0) {
                curentRow.find('.title_col').text(val.title)
                    .end()
                    .find('.placeholder_col').text(val.placeholder)
                    .end()
                    .find('.value_col').text(val.value)
            }else {
                let newRowHtml = '<tr class="one_field" crypt="'+key+'">' +
                    '            <td class="type_col">'+val.type+'</td>' +
                    '            <td class="title_col">'+val.title+'</td>' +
                    '            <td class="placeholder_col">'+val.placeholder+'</td>' +
                    '            <td class="value_col">'+val.value+'</td>' +
                    '        </tr>';
                oneSimleFormWrapper.find('.simple_form_fields tbody').append(newRowHtml);
            }

        })
    }
    simpleFormElementDelete(crypt){
        let popContainer = $('#simple_form_processing_pop'),
            popCurentRow = popContainer.find('.one_row[crypt='+crypt+']'),
            processingForm = $('.form_processing_container '),
            processingCurentRow = processingForm.find('.simple_forms_wrapper_body .one_field[crypt='+crypt+']');
        popCurentRow.remove();
        processingCurentRow.remove();
    }
    simpleFormDelete(crypt){
        let simpleFormContainer = $('.one_simple_form_container[crypt='+crypt+']');
        simpleFormContainer.remove();
    }

}