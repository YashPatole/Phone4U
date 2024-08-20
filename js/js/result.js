$(function (){

    // console.log(document.forms[0].firstElementChild);
//     // alert("Hello");
//     // console.log($("#firstPriority"));
//     $("#firstPriority").click(function(){
//         // $input = ;
//         console.log($('#firstPriortiy:selected').val());
//         // alert("Clicked");
//     });


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
    console.log(queryString);
    var q = queryString['error'];

    if(q == 1){
        alert('Two or more Preferences cannot be same');
    }

});