<script>
const pseudo = Math.floor(Math.random() * 2);
const img = '';
if (pseudo == 0){
	const img = 'https://www.croneri.co.uk/sites/default/files/inline-images/julia-bowyer.png';
	const alt = 'Julia Bowyer, Content Manager';
}else{
	const img = 'https://www.croneri.co.uk/sites/default/files/inline-images/sarah-kay.png';
	const alt = 'Sarah Kay, Lead Technical Writer';
}
document.write('<a href="/our-experts"><img src="' + img + '" class="my-5" alt="' + alt + '"></a>');
</script>
<noscript>
<a href="/our-experts"><img src="https://www.croneri.co.uk/sites/default/files/inline-images/julia-bowyer.png" class="my-5" alt="Julia Bowyer, Content Manager"></a>
</noscript>