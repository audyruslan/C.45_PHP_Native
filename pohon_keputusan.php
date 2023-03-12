<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$title = "Pohon Keputusan - C4.5";
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

                    <?php
                    generatePohonC45('0', 1);

                    function generatePohonC45($idparent, $spasi)
                    {
                        global $conn;

                        $result = mysqli_query($conn, "SELECT * from pohon_keputusan_c45 where id_parent= '$idparent'");
                        while ($row = mysqli_fetch_row($result)) {
                            for ($i = 1; $i <= $spasi; $i++) {
                                echo "|&nbsp;&nbsp;";
                            }

                            if ($row[6] === 'IPA') {
                                $keputusan = "<font color=green>$row[6]</font>";
                            } elseif ($row[6] === 'IPS') {
                                $keputusan = "<font color=red>$row[6]</font>";
                            } elseif ($row[6] === '?') {
                                $keputusan = "<font color=blue>$row[6]</font>";
                            } else {
                                $keputusan = "<b>$row[6]</b>";
                            }
                            echo "<font color=red>$row[1]</font> = $row[2] (IPA = $row[4], IPS = $row[6]) : <b>$keputusan</b><br>";

                            /*panggil dirinya sendiri*/
                            generatePohonC45($row[0], $spasi + 1);
                        }
                    }
                    ?>

                </div>
            </div>
    </section>
</div>
<?php
require 'layouts/footer.php'; ?>