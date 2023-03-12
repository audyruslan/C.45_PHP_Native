<?php
$conn = mysqli_connect("localhost", "root", "", "db_c45");

populateDb();
miningC45('', '');

function miningC45($atribut, $nilai_atribut)
{
    perhitunganC45($atribut, $nilai_atribut);
    insertAtributPohonKeputusan($atribut, $nilai_atribut);
    getInfGainMax($atribut, $nilai_atribut);
    replaceNull();
}


//#1# Hapus semua DB dan insert default atribut dan nilai atribut
function populateDb()
{
    global $conn;
    mysqli_query($conn, "TRUNCATE mining_c45");
    mysqli_query($conn, "TRUNCATE iterasi_c45");
    mysqli_query($conn, "TRUNCATE pohon_keputusan_c45");
    populateAtribut();
}

function populateAtribut()
{
    global $conn;
    mysqli_query($conn, "TRUNCATE tb_atribut");
    mysqli_query($conn, "INSERT INTO `tb_atribut` (`id`, `atribut`, `nilai_atribut`) VALUES
    ('', 'total', 'total'),
    ('', 'minat', 'IPA'),
    ('', 'minat', 'IPS'),
    ('', 'mtk_grade', 'A'),
    ('', 'mtk_grade', 'B'),
    ('', 'mtk_grade', 'C'),
    ('', 'ipa_grade', 'A'),
    ('', 'ipa_grade', 'B'),
    ('', 'ipa_grade', 'C'),
    ('', 'ips_grade', 'A'),
    ('', 'ips_grade', 'B'),
    ('', 'ips_grade', 'C'),
    ('', 'nilai_tes', 'A'),
    ('', 'nilai_tes', 'B'),
    ('', 'nilai_tes', 'C')
    ");
}

// ================ FUNGSI PERHITUNGAN C45 =================
function perhitunganC45($atribut, $nilai_atribut)
{
    global $conn;
    if (empty($atribut) and empty($nilai_atribut)) {
        //#2# Jika atribut yg diinputkan kosong, maka lakukan perhitungan awal
        $kondisiAtribut = ""; // set kondisi atribut kosong
    } else if (!empty($atribut) and !empty($nilai_atribut)) {
        // jika atribut tdk kosong, maka select kondisi atribut dari DB
        $sqlKondisiAtribut = mysqli_query($conn, "SELECT kondisi_atribut FROM pohon_keputusan_c45 WHERE atribut = '$atribut' AND nilai_atribut = '$nilai_atribut' order by id DESC LIMIT 1");
        $rowKondisiAtribut = mysqli_fetch_array($sqlKondisiAtribut);
        $kondisiAtribut = str_replace("~", "'", $rowKondisiAtribut['kondisi_atribut']);
        // replace string ~ menjadi 
    }


    $sqlAtribut = mysqli_query($conn, "SELECT distinct atribut FROM tb_atribut");
    while ($rowGetAtribut = mysqli_fetch_array($sqlAtribut)) {
        $getAtribut = $rowGetAtribut['atribut'];
        if ($getAtribut === 'total') {
            //#3# Jika atribut = total, maka hitung jumlah kasus total, jumlah Minat IPA dan jumlah Minat IPS
            // hitung jumlah kasus total
            $sqlJumlahKasusTotal = mysqli_query($conn, "SELECT COUNT(*) as jumlah_total FROM tb_training WHERE minat is not null $kondisiAtribut");
            $rowJumlahKasusTotal = mysqli_fetch_array($sqlJumlahKasusTotal);
            $getJumlahKasusTotal = $rowJumlahKasusTotal['jumlah_total'];

            // hitung jumlah Hasil IPA
            $sqlJumlahKasusIPA = mysqli_query($conn, "SELECT COUNT(*) as jumlah_ipa FROM tb_training WHERE hasil = 'IPA' AND hasil is not null $kondisiAtribut");
            $rowJumlahKasusIPA = mysqli_fetch_array($sqlJumlahKasusIPA);
            $getJumlahKasusIPA = $rowJumlahKasusIPA['jumlah_ipa'];

            // hitung jumlah hasil IPS
            $sqlJumlahKasusIPS = mysqli_query($conn, "SELECT COUNT(*) as jumlah_ips FROM tb_training WHERE hasil = 'IPS' AND hasil is not null $kondisiAtribut");
            $rowJumlahKasusIPS = mysqli_fetch_array($sqlJumlahKasusIPS);
            $getJumlahKasusIPS = $rowJumlahKasusIPS['jumlah_ips'];

            //#4# Insert jumlah kasus total, jumlah Minat IPA dan jumlah Minat IPS ke DB
            // insert ke database mining_c45
            mysqli_query($conn, "INSERT INTO mining_c45 VALUES ('', 'Total', 'Total', '$getJumlahKasusTotal', '$getJumlahKasusIPA', '$getJumlahKasusIPS', '', '', '', '', '', '')");
        } else {
            //#5# Jika atribut != total (atribut lainnya), maka hitung jumlah kasus total, jumlah Minat IPA dan jumlah Minat IPS masing2 atribut
            // ambil nilai atribut
            $sqlNilaiAtribut = mysqli_query($conn, "SELECT nilai_atribut FROM tb_atribut WHERE atribut = '$getAtribut' ORDER BY id");
            while ($rowNilaiAtribut = mysqli_fetch_array($sqlNilaiAtribut)) {
                $getNilaiAtribut = $rowNilaiAtribut['nilai_atribut'];

                // set kondisi dimana nilai_atribut = berdasakan masing2 atribut dan minat data = data training
                $kondisi = "$getAtribut = '$getNilaiAtribut' AND minat is not null $kondisiAtribut";

                // hitung jumlah kasus per atribut
                $sqlJumlahKasusTotalAtribut = mysqli_query($conn, "SELECT COUNT(*) as jumlah_total FROM tb_training WHERE $kondisi");
                $rowJumlahKasusTotalAtribut = mysqli_fetch_array($sqlJumlahKasusTotalAtribut);
                $getJumlahKasusTotalAtribut = $rowJumlahKasusTotalAtribut['jumlah_total'];


                // hitung jumlah Hasil IPA
                $sqlJumlahKasusIPAAtribut = mysqli_query($conn, "SELECT COUNT(*) as jumlah_ipa FROM tb_training WHERE $kondisi AND hasil = 'IPA'");
                $rowJumlahKasusIPAAtribut = mysqli_fetch_array($sqlJumlahKasusIPAAtribut);
                $getJumlahKasusIPAAtribut = $rowJumlahKasusIPAAtribut['jumlah_ipa'];

                // hitung jumlah Hasil IPS
                $sqlJumlahKasusIPSAtribut = mysqli_query($conn, "SELECT COUNT(*) as jumlah_ips FROM tb_training WHERE $kondisi AND hasil = 'IPS'");
                $rowJumlahKasusIPSAtribut = mysqli_fetch_array($sqlJumlahKasusIPSAtribut);
                $getJumlahKasusIPSAtribut = $rowJumlahKasusIPSAtribut['jumlah_ips'];

                //#6# Insert jumlah kasus total, jumlah Minat IPA dan jumlah Minat IPS masing2 atribut ke DBc  
                // insert ke database mining_c45
                mysqli_query($conn, "INSERT INTO mining_c45 VALUES ('', '$getAtribut', '$getNilaiAtribut', '$getJumlahKasusTotalAtribut', '$getJumlahKasusIPAAtribut', '$getJumlahKasusIPSAtribut', '', '', '', '', '', '')");

                //#7# Lakukan perhitungan entropy
                // perhitungan entropy
                $sqlEntropy = mysqli_query($conn, "SELECT id, jml_kasus_total, jml_ipa, jml_ips FROM mining_c45");
                while ($rowEntropy = mysqli_fetch_array($sqlEntropy)) {
                    $getJumlahKasusTotalEntropy = $rowEntropy['jml_kasus_total'];
                    $getJumlahKasusIPAEntropy = $rowEntropy['jml_ipa'];
                    $getJumlahKasusIPSEntropy = $rowEntropy['jml_ips'];
                    $idEntropy = $rowEntropy['id'];

                    // jika jml kasus = 0 maka entropy = 0
                    if ($getJumlahKasusTotalEntropy == 0 or $getJumlahKasusIPAEntropy == 0 or $getJumlahKasusIPSEntropy == 0) {
                        $getEntropy = 0;
                        // jika jml Minat IPA = jml Minat IPS, maka entropy = 1
                    } else if ($getJumlahKasusIPAEntropy == $getJumlahKasusIPSEntropy) {
                        $getEntropy = 1;
                    } else { // jika jml kasus != 0, maka hitung rumus entropy:
                        $perbandingan_IPA = $getJumlahKasusIPAEntropy / $getJumlahKasusTotalEntropy;
                        $perbandingan_IPS = $getJumlahKasusIPSEntropy / $getJumlahKasusTotalEntropy;

                        $rumusEntropy = (- ($perbandingan_IPA) * log($perbandingan_IPA, 2)) + (- ($perbandingan_IPS) * log($perbandingan_IPS, 2));
                        $getEntropy = round($rumusEntropy, 10); // 4 angka di belakang koma
                    }

                    //#8# Update nilai entropy
                    // update nilai entropy
                    mysqli_query($conn, "UPDATE mining_c45 SET entropy = $getEntropy WHERE id = $idEntropy");

                    //#9# Lakukan perhitungan information gain
                    // perhitungan information gain
                    // ambil nilai entropy dari total (jumlah kasus total)
                    $sqlJumlahKasusTotalInfGain = mysqli_query($conn, "SELECT jml_kasus_total, entropy FROM mining_c45 WHERE atribut = 'Total'");
                    $rowJumlahKasusTotalInfGain = mysqli_fetch_array($sqlJumlahKasusTotalInfGain);
                    $getJumlahKasusTotalInfGain = $rowJumlahKasusTotalInfGain['jml_kasus_total'];
                    // rumus information gain
                    $getInfGain = (- (($getJumlahKasusTotalEntropy / $getJumlahKasusTotalInfGain) * ($getEntropy)));

                    //#10# Update information gain tiap nilai atribut (temporary)
                    // update inf_gain_temp (utk mencari nilai masing2 atribut)
                    mysqli_query($conn, "UPDATE mining_c45 SET inf_gain_temp = $getInfGain WHERE id = $idEntropy");
                    $getEntropy = $rowJumlahKasusTotalInfGain['entropy'];

                    // jumlahkan masing2 inf_gain_temp atribut 
                    $sqlAtributInfGain = mysqli_query($conn, "SELECT SUM(inf_gain_temp) as inf_gain FROM mining_c45 WHERE atribut = '$getAtribut'");
                    while ($rowAtributInfGain = mysqli_fetch_array($sqlAtributInfGain)) {
                        $getAtributInfGain = $rowAtributInfGain['inf_gain'];

                        // hitung inf gain
                        $getInfGainFix = round(($getEntropy + $getAtributInfGain), 10);

                        //#11# Looping perhitungan information gain, sehingga mendapatkan information gain tiap atribut. Update information gain
                        // update inf_gain (fix)
                        mysqli_query($conn, "UPDATE mining_c45 SET inf_gain = $getInfGainFix WHERE atribut = '$getAtribut'");
                    }

                    //#12# Lakukan perhitungan split info
                    // rumus split info

                    $getSplitInfo = (($getJumlahKasusTotalEntropy / $getJumlahKasusTotalInfGain) * (log(($getJumlahKasusTotalEntropy / $getJumlahKasusTotalInfGain), 2)));

                    //#13# Update split info tiap nilai atribut (temporary)
                    // update split_info_temp (utk mencari nilai masing2 atribut)
                    mysqli_query($conn, "UPDATE mining_c45 SET split_info_temp = '$getSplitInfo' WHERE id = '$idEntropy'");


                    // jumlahkan masing2 split_info_temp dari tiap atribut 
                    $sqlAtributSplitInfo = mysqli_query($conn, "SELECT SUM(split_info_temp) as split_info FROM mining_c45 WHERE atribut = '$getAtribut'");
                    while ($rowAtributSplitInfo = mysqli_fetch_array($sqlAtributSplitInfo)) {
                        $getAtributSplitInfo = $rowAtributSplitInfo['split_info'];

                        // split info fix (4 angka di belakang koma)
                        $getSplitInfoFix = - (round($getAtributSplitInfo, 10));

                        //#14# Looping perhitungan split info, sehingga mendapatkan information gain tiap atribut. Update information gain
                        // update split info (fix)
                        mysqli_query($conn, "UPDATE mining_c45 SET split_info = $getSplitInfoFix WHERE atribut = '$getAtribut'");
                    }
                }

                //#15# Lakukan perhitungan gain ratio
                $sqlGainRatio = mysqli_query($conn, "SELECT id, inf_gain, split_info FROM mining_c45");
                while ($rowGainRatio = mysqli_fetch_array($sqlGainRatio)) {
                    $idGainRatio = $rowGainRatio['id'];
                    // jika nilai inf gain == 0 dan split info == 0, maka gain ratio = 0
                    if ($rowGainRatio['inf_gain'] > 0 and $rowGainRatio['split_info'] > 0) {
                        // rumus gain ratio
                        $getGainRatio = round(($rowGainRatio['inf_gain'] / $rowGainRatio['split_info']), 10);
                        //#16# Update gain ratio dari setiap atribut
                        mysqli_query($conn, "UPDATE mining_c45 SET gain_ratio = $getGainRatio WHERE id = '$idGainRatio'");
                    }
                }
            }
        }
    }
}

//#17# Insert atribut dgn information gain max ke DB pohon keputusan
function insertAtributPohonKeputusan($atribut, $nilai_atribut)
{
    global $conn;
    // ambil nilai inf gain tertinggi dimana hanya 1 atribut saja yg dipilih
    $sqlInfGainMaxTemp = mysqli_query($conn, "SELECT distinct atribut, gain_ratio FROM mining_c45 WHERE gain_ratio in (SELECT max(gain_ratio) FROM `mining_c45`) LIMIT 1");
    $rowInfGainMaxTemp = mysqli_fetch_array($sqlInfGainMaxTemp);
    // hanya ambil atribut dimana jumlah kasus totalnya tidak kosong
    if ($rowInfGainMaxTemp['gain_ratio'] > 0) {
        // ambil nilai atribut yang memiliki nilai inf gain max
        $sqlInfGainMax = mysqli_query($conn, "SELECT * FROM mining_c45 WHERE atribut = '$rowInfGainMaxTemp[atribut]'");
        while ($rowInfGainMax = mysqli_fetch_array($sqlInfGainMax)) {
            if ($rowInfGainMax['jml_ipa'] == 0 and $rowInfGainMax['jml_ips'] == 0) {
                $keputusan = 'Kosong'; // jika jml_ipa = 0 dan jml_ips = 0, maka keputusan Null
            } else if ($rowInfGainMax['jml_ipa'] !== 0 and $rowInfGainMax['jml_ips'] == 0) {
                $keputusan = 'IPA'; // jika jml_ipa != 0 dan jml_ips = 0, maka keputusan IPa
            } else if ($rowInfGainMax['jml_ipa'] == 0 and $rowInfGainMax['jml_ips'] !== 0) {
                $keputusan = 'IPS'; // jika jml_ipa = 0 dan jml_ips != 0, maka keputusan IPS
            } else {
                $keputusan = '?'; // jika jml_ipa != 0 dan jml_ips != 0, maka keputusan ?
            }

            if (empty($atribut) and empty($nilai_atribut)) {
                //#18# Jika atribut yang diinput kosong (atribut awal) maka insert ke pohon keputusan id_parent = 0
                // set kondisi atribut = AND atribut = nilai atribut
                $kondisiAtribut = "AND $rowInfGainMax[atribut] = ~$rowInfGainMax[nilai_atribut]~";

                // insert ke tabel pohon keputusan
                mysqli_query($conn, "INSERT INTO pohon_keputusan_c45 VALUES ('', '$rowInfGainMax[atribut]', '$rowInfGainMax[nilai_atribut]', 0, '$rowInfGainMax[jml_ipa]', '$rowInfGainMax[jml_ips]', '$keputusan', 'Belum', '$kondisiAtribut', 'Belum')");
            }

            //#19# Jika atribut yang diinput tidak kosong maka insert ke pohon keputusan dimana id_parent diambil dari tabel pohon keputusan sebelumnya (where atribut = atribut yang diinput)
            else if (!empty($atribut) and !empty($nilai_atribut)) {
                $sqlIdParent = mysqli_query($conn, "SELECT id, atribut, nilai_atribut, jml_ipa, jml_ips FROM pohon_keputusan_c45 WHERE atribut = '$atribut' AND nilai_atribut = '$nilai_atribut' order by id DESC LIMIT 1");
                while ($rowIdParent = mysqli_fetch_array($sqlIdParent)) {
                    // insert ke tabel pohon keputusan
                    mysqli_query($conn, "INSERT INTO pohon_keputusan_c45 VALUES ('', '$rowInfGainMax[atribut]', '$rowInfGainMax[nilai_atribut]', $rowIdParent[id], '$rowInfGainMax[jml_ipa]', '$rowInfGainMax[jml_ips]', '$keputusan', 'Belum', '', 'Belum')");

                    // hitung Pessimistic error rate parent dan child 
                    $perhitunganParentPrePruning = loopingPerhitunganPrePruning($rowIdParent['jml_ipa'], $rowIdParent['jml_ips']);
                    $perhitunganChildPrePruning = loopingPerhitunganPrePruning($rowInfGainMax['jml_ipa'], $rowInfGainMax['jml_ips']);

                    // hitung average Pessimistic error rate child 
                    $perhitunganPessimisticChild = (($rowInfGainMax['jml_ipa'] + $rowInfGainMax['jml_ips']) / ($rowIdParent['jml_ipa'] + $rowIdParent['jml_ips'])) * $perhitunganChildPrePruning;
                    // // Increment average Pessimistic error rate child
                    // $perhitunganPessimisticChildIncrement += $perhitunganPessimisticChild;
                    $perhitunganPessimisticChildIncrement = $perhitunganPessimisticChild + round($perhitunganPessimisticChild, 10);

                    // jika error rate pada child lebih besar dari error rate parent
                    if ($perhitunganPessimisticChildIncrement > $perhitunganParentPrePruning) {
                        // hapus child (child tidak diinginkan)
                        mysqli_query($conn, "DELETE FROM pohon_keputusan_c45 WHERE id_parent = $rowIdParent[id]");

                        // jika jml Minat IPA lbh besar, maka keputusan == IPA
                        if ($rowIdParent['jml_ipa'] > $rowIdParent['jml_ips']) {
                            $keputusanPrePruning = 'IPA';
                            // jika jml Minat IPS lbh besar, maka keputusan == IPS
                        } else if ($rowIdParent['jml_ipa'] < $rowIdParent['jml_ips']) {
                            $keputusanPrePruning = 'IPS';
                        }
                        // update keputusan parent
                        mysqli_query($conn, "UPDATE pohon_keputusan_c45 SET keputusan = '$keputusanPrePruning' where id = $rowIdParent[id]");
                    }
                }
            }
        }
    }

    //#20# Lakukan looping kondisi atribut untuk diproses pada fungsi perhitunganC45()
    // ambil semua id dan kondisi atribut
    $sqlLoopingKondisi = mysqli_query($conn, "SELECT id, kondisi_atribut FROM pohon_keputusan_c45");
    while ($rowLoopingKondisi = mysqli_fetch_array($sqlLoopingKondisi)) {
        // select semua data dimana id_parent = id awal
        $sqlUpdateKondisi = mysqli_query($conn, "SELECT * FROM pohon_keputusan_c45 WHERE id_parent = $rowLoopingKondisi[id] AND looping_kondisi = 'Belum'");
        while ($rowUpdateKondisi = mysqli_fetch_array($sqlUpdateKondisi)) {
            // set kondisi: kondisi sebelumnya yg diselect berdasarkan id_parent ditambah 'AND atribut = nilai atribut'
            $kondisiAtribut = "$rowLoopingKondisi[kondisi_atribut] AND $rowUpdateKondisi[atribut] = ~$rowUpdateKondisi[nilai_atribut]~";
            // update kondisi atribut
            mysqli_query($conn, "UPDATE pohon_keputusan_c45 SET kondisi_atribut = '$kondisiAtribut', looping_kondisi = 'Sudah' WHERE id = $rowUpdateKondisi[id]");
        }
    }

    //#21# Insert iterasi nilai perhitungan ke DB
    $sqlInfGainMaxIterasi = mysqli_query($conn, "SELECT distinct atribut, gain_ratio FROM mining_c45 WHERE gain_ratio in (SELECT max(gain_ratio) FROM `mining_c45`) LIMIT 1");
    $rowInfGainMaxIterasi = mysqli_fetch_array($sqlInfGainMaxIterasi);
    // hanya ambil atribut dimana jumlah kasus totalnya tidak kosong
    if ($rowInfGainMaxIterasi['gain_ratio'] > 0) {
        $kondisiAtribut = "$rowInfGainMaxIterasi[atribut]";
        $iterasiKe = 1;
        $sqlInsertIterasiC45 = mysqli_query($conn, "SELECT * FROM mining_c45");
        while ($rowInsertIterasiC45 = mysqli_fetch_array($sqlInsertIterasiC45)) {
            // insert ke tabel iterasi
            mysqli_query($conn, "INSERT INTO iterasi_c45 VALUES ('', $iterasiKe, '$kondisiAtribut', '$rowInsertIterasiC45[atribut]', '$rowInsertIterasiC45[nilai_atribut]', '$rowInsertIterasiC45[jml_kasus_total]', '$rowInsertIterasiC45[jml_ipa]', '$rowInsertIterasiC45[jml_ips]', '$rowInsertIterasiC45[entropy]', '$rowInsertIterasiC45[inf_gain]', '$rowInsertIterasiC45[split_info]', '$rowInsertIterasiC45[gain_ratio]')");
            $iterasiKe++;
        }
    }
}


//#22# Ambil information gain max untuk diproses pada fungsi loopingMiningC45()
function getInfGainMax($atribut, $nilai_atribut)
{
    global $conn;
    // select inf gain max
    $sqlInfGainMaxAtribut = mysqli_query($conn, "SELECT distinct atribut FROM mining_c45 WHERE gain_ratio in (SELECT max(gain_ratio) FROM `mining_c45`) LIMIT 1");
    while ($rowInfGainMaxAtribut = mysqli_fetch_array($sqlInfGainMaxAtribut)) {
        $inf_gain_max_atribut = "$rowInfGainMaxAtribut[atribut]";
        if (empty($atribut) and empty($nilai_atribut)) {
            // jika atribut kosong, proses atribut dgn inf gain max pada fungsi loopingMiningC45()
            loopingMiningC45($inf_gain_max_atribut);
        } else if (!empty($atribut) and !empty($nilai_atribut)) {
            // jika atribut tdk kosong, maka update diproses = sudah pada tabel pohon_keputusan_c45
            mysqli_query($conn, "UPDATE pohon_keputusan_c45 SET diproses = 'Sudah' WHERE nilai_atribut = '$nilai_atribut'");
            // proses atribut dgn inf gain max pada fungsi loopingMiningC45()
            loopingMiningC45($inf_gain_max_atribut);
        }
    }
}

//#23# Looping proses mining dimana atribut dgn information gain max yang akan diproses pada fungsi miningC45()
function loopingMiningC45($inf_gain_max_atribut)
{
    global $conn;
    $sqlBelumAdaKeputusanLagi = mysqli_query($conn, "SELECT * FROM pohon_keputusan_c45 WHERE keputusan = '?' and diproses = 'Belum' AND atribut = '$inf_gain_max_atribut'");
    while ($rowBelumAdaKeputusanLagi = mysqli_fetch_array($sqlBelumAdaKeputusanLagi)) {
        if ($rowBelumAdaKeputusanLagi['id_parent'] == 0) {
            populateAtribut();
        }
        $atribut = "$rowBelumAdaKeputusanLagi[atribut]";
        $nilai_atribut = "$rowBelumAdaKeputusanLagi[nilai_atribut]";
        $kondisiAtribut = "AND $atribut = \'$nilai_atribut\'";
        mysqli_query($conn, "TRUNCATE mining_c45");
        mysqli_query($conn, "DELETE FROM tb_atribut WHERE atribut = '$inf_gain_max_atribut'");
        miningC45($atribut, $nilai_atribut);
        populateAtribut();
    }
}

// rumus menghitung Pessimistic error rate
function perhitunganPrePruning($r, $z, $n)
{
    $rumus = ($r + (($z * $z) / (2 * $n)) + ($z * (sqrt(($r / $n) - (($r * $r) / $n) + (($z * $z) / (4 * ($n * $n))))))) / (1 + (($z * $z) / $n));
    $rumus = round($rumus, 10);
    return $rumus;
}

// looping perhitungan Pessimistic error rate
function loopingPerhitunganPrePruning($positif, $negatif)
{
    $z = 1.645; // z = batas kepercayaan (confidence treshold)
    $n = $positif + $negatif; // n = total jml kasus
    $n = round($n, 10);
    // r = perbandingan child thd parent
    if ($positif < $negatif) {
        $r = $positif / ($n);
        $r = round($r, 10);
        return perhitunganPrePruning($r, $z, $n);
    } elseif ($positif > $negatif) {
        $r = $negatif / ($n);
        $r = round($r, 10);
        return perhitunganPrePruning($r, $z, $n);
    } elseif ($positif == $negatif) {
        $r = $negatif / ($n);
        $r = round($r, 10);
        return perhitunganPrePruning($r, $z, $n);
    }
}

// replace keputusan jika ada keputusan yg Null
function replaceNull()
{
    global $conn;
    $sqlReplaceNull = mysqli_query($conn, "SELECT id, id_parent FROM pohon_keputusan_c45 WHERE keputusan = 'Null'");
    while ($rowReplaceNull = mysqli_fetch_array($sqlReplaceNull)) {
        $sqlReplaceNullIdParent = mysqli_query($conn, "SELECT jml_ipa, jml_ips, keputusan FROM pohon_keputusan_c45 WHERE id = $rowReplaceNull[id_parent]");
        $rowReplaceNullIdParent = mysqli_fetch_array($sqlReplaceNullIdParent);
        if ($rowReplaceNullIdParent['jml_ipa'] > $rowReplaceNullIdParent['jml_ips']) {
            $keputusanNull = 'IPA'; // jika jml_ipa != 0 dan jml_ips = 0, maka keputusan IPA
        } else if ($rowReplaceNullIdParent['jml_ipa'] < $rowReplaceNullIdParent['jml_ips']) {
            $keputusanNull = 'IPS'; // jika jml_ipa = 0 dan jml_ips != 0, maka keputusan IPS
        }
        mysqli_query($conn, "UPDATE pohon_keputusan_c45 SET keputusan = '$keputusanNull' WHERE id = $rowReplaceNull[id]");
    }
}
