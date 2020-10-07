<!-- Scroll to Top Start -->	
	<a href="#" class="scrollup">
		<i class="fa fa-angle-up"></i>
	</a>	
	<!-- Scroll to Top End -->	
		
	<!-- Scripts Js Start -->
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/owl.animate.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>	
	<script src="js/waypoints.min.js"></script> 
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.meanmenu.js"></script>
	<script src="js/custom.js"></script>
	

<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/buttons.bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script>
<script type="text/javascript" language="javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.colVis.min.js"></script>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: ['colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example_wrapper .col-sm-6:eq(0)' );
} );
</script>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var table = $('#example1').DataTable( {
        lengthChange: false,
        buttons: ['colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example1_wrapper .col-sm-6:eq(0)' );
} );
</script>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var table = $('#example2').DataTable( {
        lengthChange: false,
        buttons: ['colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example2_wrapper .col-sm-6:eq(0)' );
} );
</script>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var table = $('#example3').DataTable( {
        lengthChange: false,
        buttons: ['colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example3_wrapper .col-sm-6:eq(0)' );
} );
</script>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
    var table = $('#example4').DataTable( {
        lengthChange: false,
        buttons: ['colvis' ]
    } );
 
    table.buttons().container()
        .appendTo( '#example4_wrapper .col-sm-6:eq(0)' );
} );
</script>
<script>
	$('#myTab a').click(function(e) {
  e.preventDefault();
  $(this).tab('show');
});

// store the currently selected tab in the hash value
$("ul.nav-tabs > li > a").on("shown.bs.tab", function(e) {
  var id = $(e.target).attr("href").substr(1);
  window.location.hash = id;
});

// on load of the page: switch to the currently selected tab
var hash = window.location.hash;
$('#myTab a[href="' + hash + '"]').tab('show');
</script>
	<!-- Scripts Js End -->
</body>
</html>