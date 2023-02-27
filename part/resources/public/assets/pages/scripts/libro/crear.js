$(document).ready(function () {
    Biblioteca.validacionGeneral('form-general');
    $('#foto').fileinput({
        language: 'es',
        allowedFileExtensions: ['jpg', 'jpeg', 'png'],
        maxFileSize: 2048,
        showUpload: false,
        showClose: false,
        initialPreviewAsData: true,
        dropZoneEnabled: false,
        theme: "fa",
    });
});
