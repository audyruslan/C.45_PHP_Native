<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Pohon Keputusa - C4.5";
require 'layouts/header.php';
require 'layouts/navbar.php';
require 'functions.php';

$user = $_SESSION["username"];
$query = mysqli_query($conn, "SELECT * FROM admin WHERE username = '$user'");
$admin = mysqli_fetch_assoc($query);
require 'layouts/sidebar.php';
?>

<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Pohon Keputusan</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">Pohon Keputusan</li>
                    </ol>
                </div>
                <!-- /.col -->
            </div><!-- /.row -->
            <hr>
        </div><!-- /.container-fluid -->
    </div>

    <section class="content">
        <div class="container-fluid">
            <!-- START ALERTS AND CALLOUTS -->
            <h3 class="mb-2">Pohon Keputusan Menggunakan Algoritma C.45</h3>

            <div class="card card-default">
                <div class="card-header">
                    <i class="fas fa-folder-tree"></i> Pohon Keputusan

                    <div class="card-tools">
                        <button class="btn btn-sm btn-danger"><i class="fas fa-trash"></i> Hapus Pohon
                            Keputusan</button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="tree well">
                        <ul>
                            <li>
                                <span><i class="icon-folder-open"></i> Parent</span> <a href="">Goes somewhere</a>
                                <ul>
                                    <li>
                                        <span><i class="icon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                        <ul>
                                            <li>
                                                <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes
                                                    somewhere</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <span><i class="icon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                        <ul>
                                            <li>
                                                <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes
                                                    somewhere</a>
                                            </li>
                                            <li>
                                                <span><i class="icon-minus-sign"></i> Grand Child</span> <a href="">Goes
                                                    somewhere</a>
                                                <ul>
                                                    <li>
                                                        <span><i class="icon-minus-sign"></i> Great Grand Child</span>
                                                        <a href="">Goes somewhere</a>
                                                        <ul>
                                                            <li>
                                                                <span><i class="icon-leaf"></i> Great great Grand
                                                                    Child</span> <a href="">Goes somewhere</a>
                                                            </li>
                                                            <li>
                                                                <span><i class="icon-leaf"></i> Great great Grand
                                                                    Child</span> <a href="">Goes somewhere</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <span><i class="icon-leaf"></i> Great Grand Child</span> <a
                                                            href="">Goes somewhere</a>
                                                    </li>
                                                    <li>
                                                        <span><i class="icon-leaf"></i> Great Grand Child</span> <a
                                                            href="">Goes somewhere</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes
                                                    somewhere</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-folder-open"></i> Parent2</span> <a href="">Goes somewhere</a>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> Child</span> <a href="">Goes somewhere</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
    </section>
</div>
<script>
$(function() {
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
    $('.tree li.parent_li > span').on('click', function(e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign')
                .removeClass('icon-minus-sign');
        } else {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign')
                .removeClass('icon-plus-sign');
        }
        e.stopPropagation();
    });
});
</script>
<?php
require 'layouts/footer.php'; ?>