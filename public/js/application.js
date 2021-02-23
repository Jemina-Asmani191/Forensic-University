var _URL = window.URL || window.webkitURL;

$('#applicant_image').change(function () {
    var file = $(this)[0].files[0];
    var fsize = file.size;
    var fileupsize = Math.round(fsize / 1024);
    img = new Image();
    var imgwidth = 0;
    var imgheight = 0;
    var maxwidth = 413;
    var maxheight = 531;
    var maxsize = 100;

    img.src = _URL.createObjectURL(file);
    img.onload = function () {
        imgwidth = this.width;
        imgheight = this.height;

        if (imgwidth <= maxwidth && imgheight <= maxheight && fileupsize <= maxsize) {
            filePreview(this, '#applicant_image');
        } else {
            if (imgwidth > maxwidth && imgheight > maxheight && fileupsize)
            {
                alert("Image size must be less than " + maxwidth + "X" + maxheight);
            }

            if (fileupsize > maxsize)
            {
                alert("Image file size must be less than " + maxsize + " Kb.");
            }
        }
    };
    img.onerror = function () {

        alert("not a valid file: " + file.type);
    }

});

$('#idprof_image').change(function () {
    var file = $(this)[0].files[0];
    var fsize = file.size;
    var fileupsize = Math.round(fsize / 1024);
    img = new Image();
    var imgwidth = 0;
    var imgheight = 0;
    var maxwidth = 500;
    var maxheight = 500;
    var maxsize = 200;

    img.src = _URL.createObjectURL(file);
    img.onload = function () {
        imgwidth = this.width;
        imgheight = this.height;

        if (imgwidth <= maxwidth && imgheight <= maxheight && fileupsize <= maxsize) {
            filePreview(this, '#idprof_image');
        } else {
            if (imgwidth > maxwidth && imgheight > maxheight && fileupsize)
            {
                alert("Image size must be less than " + maxwidth + "X" + maxheight);
            }

            if (fileupsize > maxsize)
            {
                alert("Image file size must be less than " + maxsize + " Kb.");
            }
        }
    };
    img.onerror = function () {

        alert("not a valid file: " + file.type);
    }

});


function filePreview(input, divid) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $(divid + ' + img').remove();
            $(input).after('<img src="' + e.target.result + '" class="upload-preview"/>');
        }
        reader.readAsDataURL(input.files[0]);
    }
}
$(document).ready(function () {
    $('#applicant_image').on('change', function (e) {
        e.preventDefault();
        if ($('#applicant_image').val() == '') {
            alert("Please select the file.");
        }
    });
    $('#idprof_image').on('change', function (e) {
        e.preventDefault();
        if ($('#idprof_image').val() == '')
        {
            alert("Please select the file.");
        }
    });
});