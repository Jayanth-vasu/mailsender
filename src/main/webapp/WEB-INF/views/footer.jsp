
<!-- <div class="container">
  	<div class="col-sm-8 col-sm-offset-2 text-center">
      <h2>Beautiful Bootstrap Templates</h2>
      
      <hr>
      <h4>
        We love templates. We love Bootstrap.
      </h4>
      <p>Get more free templates like this at the <a href="http://bootply.com">Bootstrap Playground</a>, Bootply.</p>
      <hr>
      <ul class="list-inline center-block">
        <li><a href="http://facebook.com/bootply"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIa3NvPddMbi4mtjSPXZZOC-kgsSkz5p6AP_0Zt4KHM60g-Aa8"></a></li>
        <li><a href="http://twitter.com/bootply"><img src="/assets/example/soc_tw.png"></a></li>
        <li><a href="http://google.com/+bootply"><img src="/assets/example/soc_gplus.png"></a></li>
        <li><a href="http://pinterest.com/in1"><img src="/assets/example/soc_pin.png"></a></li>
      </ul>
      
  	</div>/col
</div>/container
  


<div id="footer">
  <div class="container">
    <p class="text-muted">This Bootstrap Example courtesy <a href="http://www.bootply.com">Bootply.com</a></p>
  </div>
</div>

<ul class="nav pull-right scroll-top">
  <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
</ul> -->

<style>
.panel {
	margin-bottom: 2px;
}

.back-to-top {
	cursor: pointer;
	position: fixed;
	bottom: 100px;
	right: 20px;
	display: none;
}
</style>
<script>
$(document).ready(function(){
    $(window).scroll(function () {
           if ($(this).scrollTop() > 50) {
               $('#back-to-top').fadeIn();
           } else {
               $('#back-to-top').fadeOut();
           }
       });
       // scroll body to 0px on click
       $('#back-to-top').click(function () {
           $('#back-to-top').tooltip('hide');
           $('body,html').animate({
               scrollTop: 0
           }, 800);
           return false;
       });
       
       $('#back-to-top').tooltip('show');

});
</script>
<div class="panel panel-default">
	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top"
		role="button" title="Click to return on the top page"
		data-toggle="tooltip" data-placement="left"><span
		class="glyphicon glyphicon-chevron-up"></span></a>

	<div class="panel-footer">@ Copyrights 2016</div>
</div>
</body>
</html>