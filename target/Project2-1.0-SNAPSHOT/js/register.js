$().ready(function () {
    $('#registerForm').validate({
        rules: {
            username: {
                required: true,
                minlength: 4,
                maxlength: 10
            },
            password: {
                required: true,
                minlength: 5,
                maxlength: 16
            },
            birthday: {
                required: true
            },
            phone: {
                required: true,
                number: true,
                length: 10
            },
            address: {
                required: true,
                minlength: 5,
                maxlength: 200
            },
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            username: {
                required: "Chua nhap username",
                minlength: "min la 6 nha",
                maxlength: "max la 10 nha"
            },
            password: {
                required: "Chua nhap password",
                minlength: "Password lon hon 5"
            },
            birthday: {
                required: "Chua nhap ngay"
            },
            phone: {
                required: "Chua nhap phone",
                length: "phone la 10 nha"
            },
            address: {
                required: "Chua nhap address",
                minlength: "min la 10 nha",
                maxlength: "max la 200 nha"
            },
            email: "Chua nhap email"
        }
    });
});