/**
 * Created by lin on 4/6/2018.
 */
var LOGIN_MODULE=(function(){
    $("#regForm").formValidation({
        framework:'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        // fields:{
        //     regName: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'Required.'
        //             },
        //             stringLength:{
        //                 min:4
        //             }
        //         }
        //     },
        //     regEmail: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'Required.'
        //             },
        //             emailAddress: {
        //                 message: 'The input is not a valid email address.'
        //             }
        //         }
        //     },
        //     regPass:{
        //         validators: {
        //             notEmpty: {
        //                 message: 'Required.'
        //             },
        //             //DISABLED FOR EASE OF TESTING
        //             // callback:{
        //             //     callback: function(value, validator, $field) {
        //             //         var password = $field.val();
        //             //         if (password == '') {
        //             //             return true;
        //             //         }
        //             //
        //             //         var result  = zxcvbn(password),
        //             //             score   = result.score,
        //             //             message = result.feedback.warning || 'The password is weak';
        //             //
        //             //         // We will treat the password as an invalid one if the score is less than 3
        //             //         if (score < 3) {
        //             //             return {
        //             //                 valid: false,
        //             //                 message: message    // Yeah, this will be set as error message
        //             //             }
        //             //         }
        //             //
        //             //         return true;
        //             //     }
        //             // }
        //         }
        //     },
        // regConfirm:{
        //     validators:{
        //         identical:{
        //             field:'regPass',
        //             message:'Must be the same as the password.'
        //         }
        //     }
        // }
        // }
    }).on('success.form.fv',function(e){
        e.preventDefault();
        console.log("success");
        var $form=$(e.target);
         var request=$.ajax({
            url:$form.attr('action'),
            type:'POST',
            data:$("#regForm").serialize()
            // success: function(result){
            //     console.log("POST success");
            // },
            // error:function(result){
            //     console.log(result);
            // }
        });
        request.done(function(data){
            console.log("POST success");
        });
        request.fail(function(jqXHR, textStatus){
            console.log("POST fail"+jqXHR+textStatus);
        });
    });
})();