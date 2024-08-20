$(function() {
    $('.datepicker').datepicker({
        minDate: new Date(1900, 1, 1),
        maxDate: new Date(),
        yearRange: 25
    });

    $("#pic").change(function(){
        console.log(this.files[0]);
        if(this.files[0])
        {
            var reader = new FileReader();
            reader.readAsDataURL(this.files[0]);
            reader.onload = loadImage;//onLoad is an event of reader which is fired when the pic is loaded
        }
    });

    function loadImage(e){
        console.log(e);
        $('#temp_pic').attr('src',e.target.result);//the pic is converted to bytes and set as the src of img tag
    }

    $("#add-contact-form").validate({
        rules: {
            first_name: {
                required: true,
                minlength: 2
            },
            last_name: {
                required: true,
                minlength: 2
            },
            telephone: {
                required: true,
            },
            birthdate: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            address: {
                required: true,
                minlength: 5
            },
        },
        errorElement: 'div',
        errorPlacement: function(error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
            }
        }
    });
});