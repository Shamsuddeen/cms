<?php
session_start();
require('config/connect.php');
require('functionsfe.php');

	$curpage = SetCurPage();
	$perpage = PerPageResults();

	$totalres = mysqli_num_rows(SelPublishedContent());

	$pages = GetStartEndPages($curpage, $perpage, $totalres);

	$start = $pages['start'];
	$endpage = $pages['end'];
	
	$res = SelPubContPag($start, $perpage);
	$startpage = 1;
	$nextpage = $curpage + 1;
	$previouspage = $curpage - 1;

?>
<?php include 'inc/header.php' ?>
<?php include 'inc/nav.php' ?>

</div>
<div class="container">
	<div class="col-md-8">
	<?php while ($r = mysqli_fetch_assoc($res)) { ?>
		<div class="panel panel-primary">
		  <div class="panel-body">
		  	<a href="<?php echo $r['url']; ?>"><h2><?php echo $r['title']; ?></h2></a>
		  	<div class="row">
		  		<div class="col-md-4"><img src="admin/<?php echo $r['featuredimage']; ?>" height="150px" width="150px" class="img-rounded img-responsive"></div>
		  		<div class="col-md-8"><?php echo substr($r['content'], 0, 350) ."..."; ?>
		  		<br>
		  		<a class="btn btn-primary pull-right" href="<?php echo $r['url']; ?>" role="button">Read More...</a>
		  		</div>
		  	</div>
		  </div>
		</div>
	<?php } ?>
	<?php if($endpage>=1){ echo PrintPagination($curpage, $startpage, $endpage, $previouspage, $nextpage); } ?>
	</div>
	<div class="col-md-4 hidden-xs">
		<?php include 'inc/sidebar.php'; ?>
	</div>
</div>
<?php include 'inc/footer.php' ?>