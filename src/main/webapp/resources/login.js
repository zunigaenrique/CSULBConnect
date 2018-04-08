/**
 * Created by lin on 4/6/2018.
 */
var LOGIN_MODULE=(function(){
    
    function enableReg2Validation(){
        console.log("reg2 enabled");
        $("#reg2").formValidation({
            fields:{
                cEmail:{
                    validators:{
                        notEmpty: {
                            message: 'Required.'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address.'
                        }
                    }
                },
                cCode:{
                    validators:{
                        notEmpty: {
                            message: 'Required.'
                        },
                        integer: {
                            message: 'Numbers only.'
                        }
                    }
                }
            }
        }).on('success.form.fv',function(e){
            console.log("confirm submit");
            e.preventDefault();
            var request=$.ajax({
                url:"/regConfirm",
                type:'POST',
                data:$("#reg2").serialize()
            });
            request.done(function(data){
                $("#reg2").html(data);
                // $("#reg2").toggle();
                // $("#success").toggle();
            });
            request.fail(function(jqXHR, textStatus){
                console.log("POST fail"+jqXHR+textStatus);
            });
        });
    }
    
    $("#reg1").formValidation({
        framework:'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields:{
            regName: {
                validators: {
                    notEmpty: {
                        message: 'Required.'
                    },
                    stringLength:{
                        min:4
                    }
                }
            },
            regLName: {
                validators: {
                    notEmpty: {
                        message: 'Required.'
                    },
                    stringLength:{
                        min:4
                    }
                }
            },
            regEmail: {
                validators: {
                    notEmpty: {
                        message: 'Required.'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address.'
                    }
                }
            },
            regPass:{
                validators: {
                    notEmpty: {
                        message: 'Required.'
                    },
                    //DISABLED FOR EASE OF TESTING
                    // callback:{
                    //     callback: function(value, validator, $field) {
                    //         var password = $field.val();
                    //         if (password == '') {
                    //             return true;
                    //         }
                    //
                    //         var result  = zxcvbn(password),
                    //             score   = result.score,
                    //             message = result.feedback.warning || 'The password is weak';
                    //
                    //         // We will treat the password as an invalid one if the score is less than 3
                    //         if (score < 3) {
                    //             return {
                    //                 valid: false,
                    //                 message: message    // Yeah, this will be set as error message
                    //             }
                    //         }
                    //
                    //         return true;
                    //     }
                    // }
                }
            },
        regConfirm:{
            validators:{
                identical:{
                    field:'regPass',
                    message:'Must be the same as the password.'
                }
            }
        }
        }
    }).on('success.form.fv',function(e){
        e.preventDefault();
        var $form=$(e.target);
        var request=$.ajax({
            url:"/reg",
            type:'POST',
            data:$("#reg1").serialize()
        });
        request.done(function(data){
            $("#regForm").html(data);
            enableReg2Validation();
        });
        request.fail(function(jqXHR, textStatus){
            console.log("POST fail"+jqXHR+textStatus);
            alert("Email already registered.");
        });
    });
    
    $("#conf").click(function(){
        var request=$.ajax({
            url:"/conf",
            type:'GET'
        });
        request.done(function(data){
            console.log("GET success");
            $("#regForm").html(data);

            enableReg2Validation();
        });
    })();
})();