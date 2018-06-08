<link rel="stylesheet" type="text/css" href="magnifier.css">
<style>
	m.attach({
    thumb: '#thumb',
    large: 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Starry_Night_Over_the_Rhone.jpg/400px-Starry_Night_Over_the_Rhone.jpg',
    largeWrapper: 'preview'
});
</style>
<div>
    <a class="magnifier-thumb-wrapper" href="http://en.wikipedia.org/wiki/File:Starry_Night_Over_the_Rhone.jpg">
        <img id="thumb" src="http://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Starry_Night_Over_the_Rhone.jpg/200px-Starry_Night_Over_the_Rhone.jpg">
    </a>
    <div class="magnifier-preview" id="preview" style="width: 200px; height: 133px">Starry Night Over The Rhone<br>by Vincent van Gogh</div>
</div>

<script type="text/javascript" src="Event.js"></script>
<script type="text/javascript" src="Magnifier.js"></script>
<script type="text/javascript">
var evt = new Event(),
    m = new Magnifier(evt);
</script>