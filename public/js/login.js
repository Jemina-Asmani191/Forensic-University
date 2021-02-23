(function ($) {
    "use strict";
    $('.input').each(function () {
        $(this).on('blur', function () {
            if ($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })
    })
    var input = $('.validate-input .input');

    $('.validate-form').on('submit', function () {
        var check = true;

        for (var i = 0; i < input.length; i++) {
            if (validate(input[i]) == false) {
                showValidate(input[i]);
                check = false;
            }
        }

        return check;
    });
    $('.validate-form .input').each(function () {
        $(this).focus(function () {
            hideValidate(this);
        });
    });
    function validate(input) {
        if ($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if ($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if ($(input).val().trim() == '') {
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }

    var showPass = 0;
    $('.btn-show-pass').on('click', function () {
        if (showPass == 0) {
            $(this).next('input').attr('type', 'text');
            $(this).find('i').removeClass('zmdi-eye');
            $(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type', 'password');
            $(this).find('i').addClass('zmdi-eye');
            $(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }

    });


})(jQuery);


$("#signupForm").validate({
    rules: {
        txt_stufname: {
            required: true,
            lettersonly: true,
            minlength: 2,
			maxlength: 50
        },
       /* txt_stumname: {
            //required: true,
            lettersonly: true,
            minlength: 1
        },
        txt_stulname: {
            //required: true,
            lettersonly: true,
            minlength: 2
        },*/
        txt_stuname: {
            required: true,
            lettersonly: true,
            minlength: 11
        },
		/*txt_std_zipcode: {
            required: true,
            number: true,
            minlength: 5,
			maxlength: 6
        },*/
        txt_username: {
            required: true,
            minlength: 2
        },
        txt_password: {
            required: true,
            minlength: 5
        },
        txt_confirm_password: {
            required: true,
            minlength: 5,
            equalTo: "#txt_password"
        },
        txt_email: {
            required: true,
            email: true
        },
        txt_dateofbirth: {
            required: true,
        },
        txt_contact: {
            required: true,
            minlength: 10
        },
    },
    messages: {
        txt_stufname: {
            required: "Please enter your first name",
            minlength: "Please enter your first name"
        },
        /*txt_stumname: {
            required: "Please enter your middle name",
            minlength: "Please enter your middle name"
        },
        txt_stulname: {
            required: "Please enter your last name",
            minlength: "Please enter your last name"
        },*/
        /*txt_stulname: {
            required: "Please enter your last name",
            minlength: "Last name must consist of at least 2 characters"
        },
        txt_stulname: {
            required: "Please enter your last name",
            minlength: "Last name must consist of at least 2 characters"
        },*/
        txt_dateofbirth: {
            required: "Please enter your last name",
        },
		/*txt_std_zipcode: {
            required: "Please enter your Zip Code",
            maxlength: "Zip Code must consist of at least 6 characters",
			number: "Zip Code Must consist Only Digits"
        },*/
        txt_eduqua: {
            required: "Please enter your last name",
        },
        txt_username: {
            required: "Please enter a username",
            minlength: "Your username must consist of at least 2 characters"
        },
        txt_password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
        },
        txt_confirm_password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long asnd same as previous one.",
            equalTo: "Please enter the same password as above."
        },
        txt_eduqua: "Please Select education qualification.",
        email: "Please enter a valid email address.",
        txt_contact: "Please Enter the Contact Number.",
    }
});
$('#txt_dateofbirth').datepicker({
     format : 'mm/dd/yyyy',
     autoclose: true,
     clearBtn: true,
     assumeNearbyYear: true,
     endDate: "-18y",
     startDate: "-70y",
     maxViewMode: 2,
});
