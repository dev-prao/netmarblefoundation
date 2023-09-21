let id = $('#id');
let pw = $('#pw');
let name = $('#name');
let gender = $('#gender');
let email = $('#email');
let btn = $('#btn');

$(btn).on('click', function() {
    if($(id).val() == "") {
        $(id).next('label').addClass('warning');
        setTimeout(function() {
            $('label').removeClass('warning');
        },1500);
    }
    else if($(pw).val() == "") {
        $(pw).next('label').addClass('warning');
        setTimeout(function() {
            $('label').removeClass('warning');
        },1500);
    }
    else if($(name).val() == "") {
        $(name).next('label').addClass('warning');
        setTimeout(function() {
            $('label').removeClass('warning');
        },1500);
    }
    else if($(gender).val() == "") {
        $(gender).next('label').addClass('warning');
        setTimeout(function() {
            $('label').removeClass('warning');
        },1500);
    }
    else if($(email).val() == "") {
        $(email).next('label').addClass('warning');
        setTimeout(function() {
            $('label').removeClass('warning');
        },1500);
    }
});