class Model {
    sendAjax(ajaxObject, that=''){
       $.ajax({
           uri:'/smartform',
           type:'post',
           dataType:ajaxObject.dataType,
           data:{objectToSend:JSON.stringify(ajaxObject)},
           success:function (data) {
               if(ajaxObject.collBackFunction != undefined){
                   ajaxObject.collBackFunction(data, that)
               }
           }
       })
    }
    simpleFormProcessingSavePrepare(that){
        let simpleFormObject = {
                'formCrypt':$('.form_processing_container').attr('form_crypt'),
                'simpleFormTitle': $('#simple_form_processing_pop').find('#simple_form_title').val(),
                'up': $('#simple_form_processing_pop').find('.form-check-input:checked').val()||'0',
                'fields':{}
            },
            formContainer = that.closest('#simple_form_processing_pop'),
            popBody = formContainer.find('.modal-body'),
            fieldsTable = popBody.find('.answers_table'),
            fieldCrypt = ''
        $.each(fieldsTable.find('.one_row'), function (key, val) {
            let row = $(this);
            fieldCrypt = $(this).attr('crypt');
            simpleFormObject.fields[fieldCrypt] = {

            }
            simpleFormObject.fields[fieldCrypt] ={
                'type': row.find('.field_type').text(),
                'title':row.find('.field_title').val(),
                'placeholder':row.find('.field_placeholder').val(),
                'value':row.find('.field_val').val(),
            };
        })
        return simpleFormObject;
    }
    saveSimplesFormOrdersBuildObject(ordersObj){
        return {
            'func': 'simpleFormOrdersSave',
            'ordersObject':ordersObj,
            'dataType':'json'
        }
    }

}