$(document).ready(function () {

    $('#btnSubmit').on('click', function (e) {
        e.preventDefault();

        //get the name field value
        var name = $('#iptName').val();
        //get the name field value
        var email = $('#iptEmail').val();
        //get the comments
        var comments = $('#iptMessage').val();

        //pretend we don't need validation

        //send to formspree
        $.ajax({
            url: 'https://formspree.io/afroukhtehk@gmail.com',
            method: 'POST',
            data: {
                name: name,
                _replyto: email,
                email: email,
                comments: comments,
                _subject: 'My Form Submission',
            },
            dataType: "json",
            success: function () {
                console.log('success');
               location.reload()
            }

        });

    });

});