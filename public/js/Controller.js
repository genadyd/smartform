$(function () {
    let controller = new Controller();
})

class Controller {
    constructor() {
        this.view = new View();
        this.model = new Model();
        this.questinationNameSave();
        this.questinationNameEditorEnable();
        this.questinationNameNewEnable();
        this.openFormProcessing();
        this.formProcessingSave();
        this.addAnswerToQuestion();
        this.popUpClose();
        this.addQuestionAnswerPopOpenfirst();
        this.addQuestionAnswerPopOpenFromAnswer();
        this.openQuestionBox();
        this.closeQuestionBox();
        this.deleteOneQuestion();
        this.deleteOneQuestinnation();
        this.questionEditorEnable();
        this.deleteOneAnswer();
        this.addSimpleFormRow();
        this.simpleFormProcessingSave();
        this.openSimpleFormProcessingPop();
        this.getSimleFormsObject();
        this.simpleFormEditPopOpen();
        this.simpleFormEditSave();
        this.simpleFormElementDelete();
        this.simpleFormDelete();
        this.simplesSortable();
        this.hideShowSimpleForms();
        this.searchAnswetsByUserPhone();
        this.getAllSessions();
        this.getSessionsByDatesRange(this);
    }
    questinationNameNewEnable(){
        $('.left_panel ').on('click','.add_new:not(.hidden)',function () {
            $(this).addClass('hidden');
            $('.one_questination.in_edit').removeClass('in_edit').removeClass('alert-primary');
            $('#questinary_name').val('').focus();
        })
    }
    questinationNameSave() {
        let that = this;
        $('.new_questinary_form').on('click', '.btn', function () {
            let form = $(this).closest($('.new_questinary_form')),
                qName = form.find('#questinary_name').val(),
                isEdit = $('.left_panel .one_questination.in_edit').length>0?1:0,
                serverFunc =  isEdit==1?'editQuestinnationSave':'newQuestinnationSave',
                collbackFunc = isEdit==1?that.view.editQuestnnationAddToList:that.view.newQuestnnationAddToList,
                ajaxObject = {
                    'formName': 'newQuestinnetionForm',
                    'newQuestName': qName,
                    'func': serverFunc,
                    'collBackFunction': collbackFunc,
                    'dataType':'json'
                }
                if(isEdit == 1){
                    ajaxObject['questCrypt'] = $('.left_panel .one_questination.in_edit').attr('crypt');
                }
            that.model.sendAjax(ajaxObject);
        })
    }
    questinationNameEditorEnable(){
        let that = this;
        $('.left_panel').on('click','.controls .edit_icon', function () {
            let container = $(this).closest('.one_questination'),
                crypt = container.attr('crypt'),
                name = container.find('.q_text').text();
            $('.one_questination.in_edit').removeClass('in_edit').removeClass('alert-primary');
            container.addClass('in_edit').addClass('alert-primary');
            $('#questinary_name').val(name).focus();
            $('.left_panel .add_new.hidden').removeClass('hidden');

        })
    }
    openFormProcessing(){
        let that = this;
        $('.left_panel').on('click','.one_questination .q_text', function () {
           let container = $(this).closest('.one_questination'),
               crypt = container.attr('crypt'),
               name = container.find('.q_text').text();
           $('.one_questination').removeClass('in_processing').removeClass('alert-primary');
           $(this).closest('.one_questination').addClass('in_processing').addClass('alert-primary');
           $('#form_processing_pop.edit_pop').removeClass('edit_pop').removeAttr('parent_answer');
           $('.form_processing_container').attr('form_crypt',crypt).find('.controls_bar .form_title').text(name)
               .end().find('.add_simple_form_button.hidden').removeClass('hidden');

           let ajaxObject = {
               'func': 'getOneQuestion',
               'collBackFunction': that.view.insertFirstQuestionToPage,
               'questinnationCrypt':crypt,
               'parentAnswerCrypt':0,
               'dataType':'html'
           }
            that.model.sendAjax(ajaxObject);
        });
    }
    formProcessingSave(){
        let that = this;
        $('#form_processing_pop').on('click','.processing_submit',function () {
            let popUpForm = $('#form_processing_pop'),
                questionInput = popUpForm.find('#questionName'),
                questionName = questionInput.val(),
                parentAnswerCrypt = popUpForm.attr('parent_answer'),
                formProcessingObject = {
                    'questionName':questionName,
                    'formCrypt': $('.form_processing_container').attr('form_crypt'),
                    'answerCrypt':parentAnswerCrypt,
                    'func': 'formProcessingSave',
                    'collBackFunction': that.view.formProcessingSaveCollback ,
                    'dataType':'html',
                    'answersObject':that.getAnswersObject()
            }/*TODO add answers to object*/
            if($('#form_processing_pop').is('.edit_pop')){
                formProcessingObject['questionCrypt'] = $('#form_processing_pop').attr('question_crypt');
                formProcessingObject['func'] = 'formProcessingEditSave';
                formProcessingObject['collBackFunction'] = that.view.formProcessingEditSaveCollback;
                formProcessingObject['dataType'] = 'json';
            }
            if(questionName !='') {
                that.model.sendAjax(formProcessingObject, $(this));
            }else{
                alert('Please Insert An Question Name!');
            }
        })
    }
    getAnswersObject(that){
        let answersObject = {};
        let answerCrypt = '';
        $('#form_processing_pop .answer_string').each(function (key, val) {
             answerCrypt = $( val).attr('answer_crypt');
             answersObject[answerCrypt] = {
                'answerTytle': $(val).find('[name=answer_title]').val(),
                'answerValue':$(val).find('[name=answer_value]').val(),
                'elementCrypt':$(val).find('.answer_element').attr('element_crypt'),
            }
        })
        return(answersObject);
    }
    addAnswerToQuestion(){
        let that = this;
        $('#form_processing_pop').on('click', '.processing_controls .types_list .inputs_type', function () {
            let ajaxObject = {
                'elementCrypt': $(this).attr('crypt'),
                'func': 'addAnswerToProcessingTable',
                'collBackFunction': that.view.addAnswerToProcessingTableCollback,
                'dataType': 'html',
            }
            that.model.sendAjax(ajaxObject);
        });
    }
    popUpClose(){
        $('#form_processing_pop').on('click', '.modal-header .close', function () {
            $('.answers_table tbody tr').remove();
            $('.modal-header #questionName').val('')
        })
    }

    addQuestionAnswerPopOpenfirst(){
       $('.form_processing_container ').on('click', '.container_header .add_quest' , function () {
           $('#form_processing_pop').attr('parent_answer',0).removeClass('edit_pop').removeAttr('question_crypt');
       })
    }
    addQuestionAnswerPopOpenFromAnswer(){

        $('.form_processing_container').on('click','.one_answer_header .one_answer_controls .add_question', function () {
            let parentAnswerCrypt = $(this).closest('.one_answer_show_box').attr('answer_crypt'),
                questinnationCrypt = $('.form_processing_container').attr('form_crypt');
            $('.one_answer_show_box.in_processing').removeClass('in_processing');
            $(this).closest('.one_answer_show_box').addClass('in_processing')
            $('#form_processing_pop').attr('parent_answer',parentAnswerCrypt).removeClass('edit_pop');
        })
    }
    openQuestionBox(){
        let that = this;
        $('.form_processing_container').on('click','.one_answer_header .one_answer_controls .open_close_question_box:not(.open)', function () {
            $(this).closest('.one_answer_show_box').addClass('getter_data');
            let parentAnswerCrypt = $(this).closest('.one_answer_show_box').attr('answer_crypt'),
                questinnationCrypt = $('.form_processing_container').attr('form_crypt'),
                ajaxObject = {
                'func': 'getOneQuestion',
                'collBackFunction': that.view.formProcessingSaveCollback,
                'questinnationCrypt':questinnationCrypt,
                'parentAnswerCrypt':parentAnswerCrypt,
                'dataType':'html'
            }
            that.model.sendAjax(ajaxObject, $(this));
        })
    }
    closeQuestionBox(){
        $('.form_processing_container').on('click','.one_answer_header .one_answer_controls .open_close_question_box.open', function () {
            $(this).removeClass('open').closest('.one_answer_show_box').children('.one_answer_body:first').html('');
        });
    }
    deleteOneQuestion(){
        let that = this;
        $('.form_processing_container').on('click', '.question_answer_header .question_delete', function () {
            if(confirm('hhhhh')) {
                let questCrypt = $(this).closest('.question_answer_box').attr('question_crypt'),
                    formCrypt = $('.form_processing_container').attr('form_crypt'),
                    ajaxObject = {
                        'func': 'deleteOneQuestion',
                        'collBackFunction': that.view.deleteOneQuestionCollback,
                        'questinnationCrypt': formCrypt,
                        'questCrypt': questCrypt,
                        'dataType': 'text'
                    }
            that.model.sendAjax(ajaxObject, $(this));
            }
        })
    }
    deleteOneQuestinnation(){
        let that = this;
        $('.left_panel').on('click', '.one_questination .controls .delete_icon ', function () {
            if(confirm('aaaaa')) {
                let questinnationCrypt = $(this).closest('.one_questination').attr('crypt'),
                    ajaxObject = {
                        'func': 'deleteOneQuestinnation',
                        'collBackFunction': that.view.deleteOneQuestinnationCollback,
                        'questinnationCrypt': questinnationCrypt,
                        'dataType': 'text'
                    }
                that.model.sendAjax(ajaxObject, $(this));
            }
        })
    }
    questionEditorEnable(){
        let that = this;
        $('.form_processing_container').on('click','.question_controls .edit', function () {
            let questionCrypt = $(this).closest('.question_answer_box').attr('question_crypt'),
                questinnationCrypt =  $(this).closest('.form_processing_container ').attr('form_crypt'),
                parentAnswerCrypt = $(this).closest('.one_answer_show_box ').attr('answer_crypt')||0,
                ajaxObject = {
                    'func': 'questionEditorEnable',
                    'collBackFunction': that.view.questionEditorEnableCollback,
                    'questionCrypt':questionCrypt,
                    'questinnationCrypt': questinnationCrypt,
                    'parentAnswerCrypt':parentAnswerCrypt,
                    'dataType': 'json'
                }
            that.model.sendAjax(ajaxObject, $(this));
        })
    }
    deleteOneAnswer(){
        let that = this;
        $('#form_processing_pop').on('click','.answers_table .answer_string .delete_answer', function (e) {
            let answerCrypt = $(this).closest('.answer_string').attr('answer_crypt'),
                formCrypt = $('.form_processing_container').attr('form_crypt'),
                ajaxObject = {
                    'func': 'oneAnswerDelete',
                    'collBackFunction': that.view.oneAnswerDeleteCollback,
                    'questinnationCrypt': formCrypt,
                    'answerCrypt':answerCrypt,
                    'dataType': 'text'
                }
            that.model.sendAjax(ajaxObject, $(this));
        })
    }
    addSimpleFormRow(){
        let that = this;
$('#simple_form_processing_pop').on('click', '.add_field',function(){
    let elType = $(this).attr('t'),
        ajaxObject = {
            'func': 'addSimpleFormRow',
            'elType':elType,
            'collBackFunction': that.view.addSimpleFormRow,
            'dataType': 'html'
        }
    that.model.sendAjax(ajaxObject, $(this));
})
    }
    openSimpleFormProcessingPop(){
        $('.form_processing_container').on('click', '.container_header .add_simple_form_button', function () {
            let popContainer = $('#simple_form_processing_pop'),
                popBody = popContainer.find('.modal-body'),
                tBody = popBody.find('tbody');
            tBody.html('');
            popContainer.removeAttr('simple_form_crypt');
            popContainer.find('.simple_form_processing_submit').removeClass('in_edit');
            popContainer.find('#simple_form_title').val('');

        })
        let popContainer = $('this')
    }
    simpleFormProcessingSave(){
        let that = this;
        $('#simple_form_processing_pop').on('click', '.simple_form_processing_submit:not(.in_edit)', function () {
          let fieldsObject = that.model.simpleFormProcessingSavePrepare($(this)),
              ajaxObject = {
                  'func': 'simpleFormProcessingSave',
                  'simpleFormObject':fieldsObject,
                  'collBackFunction': that.view.simpleFormProcessingSave,
                  'dataType': 'html'
              }
            that.model.sendAjax(ajaxObject, $(this));
            })

    }
    getSimleFormsObject(){
        let that = this;
        $('.left_panel').on('click','.one_questination .q_text', function () {
            let container = $(this).closest('.one_questination'),
                crypt = container.attr('crypt'),
            ajaxObject = {
                'func': 'getSimleFormsObject',
                'collBackFunction': that.view.getSimleFormsObject,
                'questinnationCrypt':crypt,
                'dataType':'html'
            }
            that.model.sendAjax(ajaxObject);
        });
    }
    simpleFormEditPopOpen(){
        let that = this;
        $('.simple_forms_wrapper').on('click','.one_simple_form_container .form_container_header .controls .simple_edit', function () {
           let simpleCrypt = $(this).closest('.one_simple_form_container').attr('crypt'),
               ajaxObject = {
                   'func': 'getOneSimpleFormJsonData',
                   'collBackFunction': that.view.getOneSimpleFormJsonData,
                   'simpleCrypt': simpleCrypt,
                   'dataType':'json'
               }
            $('#simple_form_processing_pop').attr('simple_form_crypt',simpleCrypt)
            that.model.sendAjax(ajaxObject);
        })
    }
    simpleFormEditSave() {
        let that = this;
        $('#simple_form_processing_pop').on('click', '.simple_form_processing_submit.in_edit', function () {
            let fieldsObject = that.model.simpleFormProcessingSavePrepare($(this));
            fieldsObject['simpleFormCrypt'] = $('#simple_form_processing_pop').attr('simple_form_crypt');
            let ajaxObject = {
                    'func': 'simpleFormProcessingEditSave',
                    'simpleFormObject': fieldsObject,
                    'collBackFunction': that.view.simpleFormProcessingEditSave,
                    'dataType': 'json'
                }
            that.model.sendAjax(ajaxObject, $(this));
        })
    }
    simpleFormElementDelete(){
        let that = this;
        $('#simple_form_processing_pop').on('click','.one_row .element_delete span', function () {
            let elementContainer = $(this).closest('.one_row'),
                elementCrypt = elementContainer.attr('crypt'),
                ajaxObject = {
                    'func': 'simpleFormElementDelete',
                    'simpleElementCrypt': elementCrypt,
                    'collBackFunction': that.view.simpleFormElementDelete,
                    'dataType': 'json'
                }
            if(confirm("!!!")) {
                that.model.sendAjax(ajaxObject);
            }
        })
    }
    simpleFormDelete(){
        let that = this;
        $('.simple_forms_wrapper').on('click','.one_simple_form_container .form_container_header .controls .simple_delete ', function () {
            let simpleCrypt = $(this).closest('.one_simple_form_container').attr('crypt'),
                ajaxObject = {
                    'func': 'simpleFormDelete',
                    'collBackFunction': that.view.simpleFormDelete,
                    'simpleFormCrypt': simpleCrypt,
                    'dataType':'json'
                }
                if(confirm("!!!")) {
                    that.model.sendAjax(ajaxObject);
                }
        })
    }
    simplesSortable(){
        let that = this;
        $('.simple_forms_wrapper .simple_forms_wrapper_body').sortable({
            stop:function (e, ui) {
                let parentContainer = $(e.target),
                    sortedElements = $('.simple_forms_wrapper').find('.one_simple_form_container'),
                    formsOrdersSaveObject = {},
                    counter = 1;
                 $.each(sortedElements, function (key, val) {
                     let el = $(this)
                     el.attr('form_order', counter);
                     formsOrdersSaveObject[el.attr('crypt')] = counter
                       counter++;
                 });
                let ajaxObject = that.model.saveSimplesFormOrdersBuildObject(formsOrdersSaveObject);
                that.model.sendAjax(ajaxObject);
            }
        });
    }
    hideShowSimpleForms(){
        $('.form_processing_container').on('click', '.wis_hide_button:not(.vis)', function () {
            let simpleFormsWrapper = $(this).closest('.simple_forms_wrapper '),
                simpleFormsContainer = simpleFormsWrapper.find('.simple_forms_wrapper_body');
            simpleFormsWrapper.removeClass('el_hid');
            simpleFormsContainer.find('.one_simple_form_container.hidden').removeClass('hidden');
            $(this).addClass('vis').find('i.material-icons').text('visibility')
        })
        $('.form_processing_container').on('click', '.wis_hide_button.vis', function () {
            let simpleFormsWrapper = $(this).closest('.simple_forms_wrapper '),
                simpleFormsContainer = simpleFormsWrapper.find('.simple_forms_wrapper_body');
            simpleFormsWrapper.addClass('el_hid');
            simpleFormsContainer.find('.one_simple_form_container:not(.hidden)').addClass('hidden');
            $(this).removeClass('vis').find('i.material-icons').text('visibility_off')
        })
    }
    searchAnswetsByUserPhone(){
        let that = this;
        $('body').on('click','.by_phone_search_box .by_phone_search_submit',function () {
            let searchByPhoneButton = $(this),
                phoneNum = searchByPhoneButton.closest('.by_phone_search_box').find('input').val()||'',
            ajaxObject = {
                'func': 'GetByPhoneSearch',
                'collBackFunction': that.view.byPhoneSearchResShow ,
                'searchPhoneNum': phoneNum,
                'dataType':'html'
            }
            that.model.sendAjax(ajaxObject);
        })
    }
    getAllSessions(){
        let that = this;
        $('body').on('click','.get_all_button_box .get_all_button',function () {
            let searchByPhoneButton = $(this),
                phoneNum = searchByPhoneButton.closest('.by_phone_search_box').find('input').val()||'',
                ajaxObject = {
                    'func': 'GetAllSessions',
                    'collBackFunction': that.view.byPhoneSearchResShow ,
                    'dataType':'html'
                }
            that.model.sendAjax(ajaxObject);
        })
    }
    getSessionsByDatesRange(obj){
        // let that = this;
        $('body').on('click','.by_date_search_box .search_submit',function () {
        let datesSearchContainer = $(this).closest('.by_date_search_box'),
            fromDateVal = datesSearchContainer.find('.from_date_container #from_date_search').val(),
            toDateVal = datesSearchContainer.find('.to_date_container #to_date_search').val(),
            ajaxObject = {
                'func': 'getSessionsByDatesRange',
                'collBackFunction': obj.view.byPhoneSearchResShow ,
                'range':{
                    'fromDate':fromDateVal,
                    'toDate':toDateVal
                },
                'dataType':'html'
            };
            obj.model.sendAjax(ajaxObject);
        });
    }

}

// let controller = new Controller();