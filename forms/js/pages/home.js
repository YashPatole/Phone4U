$(function() {
    $('.modal').modal();

    $('.delete-contact').click(function() {
        var id = $(this).data('id');
        $('#modal-agree-button').attr('href',`delete-contact.php?id=${id}`);
    })

    function getUrlVars(){
        var vars = [] , hash;

        var url = window.location.href;
        var queryString = url.slice(url.indexOf('?') + 1);
        var hashes = queryString.split('&');
        for(var i=0; i<hashes.length ; i++){
            hash = hashes[i].split('=');
            vars[hash[0]] = hash[1];
        }
        return vars;
    }

    var queryString = getUrlVars();
    var q = queryString['q'];
    var op = queryString['op'];
    if(q === 'success' && op === 'insert'){
        var toastHTML = '<span class = "green darken-1">Contact inserted successfully!</span>';
        M.toast({
            html : toastHTML,
            classes : "green darken-1"
        });
    }
    else if(q== 'success' && op === 'edit'){
        var toastHTML = '<span class = "green darken-1">Contact edited successfully!</span>';
        M.toast({
            html : toastHTML,
            classes : "green darken-1"
        });
    }
});