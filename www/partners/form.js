<!-- 
<script src="//pages.croner.co.uk/js/forms2/js/forms2.min.js"></script>
<form id="mktoForm_7272"></form><script>MktoForms2.loadForm("//pages.croner.co.uk", "463-YBC-525", 7272);
</script>
-->

<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script>function getParameterByName(name, url = window.location.href.toLowerCase()) {
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}
</script>
<script src="//pages.croner.co.uk/js/forms2/js/forms2.min.js"></script>
<form id="mktoForm_7272"></form>
<script>
    MktoForms2.loadForm("//pages.croner.co.uk", "463-YBC-525", 7272, function(form){
        form.vals({
            "Landing_Page__c":location.href,
"UTM_Campaign_Last__c":getParameterByName("utm_campaign"),
"UTM_Medium_Last__c":getParameterByName("utm_medium"),
"UTM_Source_Last__c":getParameterByName("utm_source"),
"UTM_Content_Last__c":getParameterByName("utm_content"),
"UTM_Term_Last__c":getParameterByName("utm_term"),
"GCLID__c":getParameterByName("gclid"),
"FBCLID__c":getParameterByName("fbclid"),
"UTM_Referral_LC__c":getParameterByName("utm_referral")
        });
    });

$(document).ready(function(){
$('body').on('click', 'input.mktoField', function() {
$("input[name=honeypot]").val("true");
});
});
</script>


