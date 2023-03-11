<?php

// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "db_c45");

// Klasifikasi Algoritma C4.5
class AlgoritmaC45
{

    // Fungsi untuk menghitung entropy
    private function entropy($data)
    {
        $count = count($data);
        $classes = array_count_values($data);
        $entropy = 0;

        foreach ($classes as $class) {
            $p = $class / $count;
            $entropy -= $p * log($p, 2);
        }

        return $entropy;
    }

    // Fungsi untuk memisahkan data berdasarkan nilai atribut
    private function separateData($data, $attributes, $value)
    {
        $subset = array();
        $valueKey = array_search($value, array_column($attributes, 0));

        foreach ($data as $index => $datum) {
            if ($attributes[$index][$valueKey] == $value) {
                $subset[] = $datum;
            }
        }

        return $subset;
    }

    // Fungsi untuk memilih atribut terbaik
    private function pilihAtributTerbaik($data, $attributes)
    {
        $entropy = $this->entropy($data);
        $attributeCount = count($attributes[0]);
        $infoGain = array();

        for ($i = 1; $i < $attributeCount; $i++) {
            $attributeValues = array_unique(array_column($attributes, $i));
            $subsetEntropy = 0;

            foreach ($attributeValues as $value) {
                $subset = $this->separateData($data, $attributes, $value);
                $subsetCount = count($subset);
                $subsetEntropy += $subsetCount / count($data) * $this->entropy($subset);
            }

            $infoGain[$i] = $entropy - $subsetEntropy;
        }

        return array_search(max($infoGain), $infoGain);
    }

    // Fungsi untuk membangun pohon keputusan
    public function pohoKeputusan($data, $attributes, $iteration = 1)
    {
        // Tampilkan iterasi
        $this->displayIteration($iteration, $data, $attributes);

        $tree = array();
        $classCounts = array_count_values($data);
        $maxClassCount = max($classCounts);

        // Jika semua data memiliki kelas yang sama, kembalikan nilai kelas tersebut
        if ($maxClassCount == count($data)) {
            return array_search($maxClassCount, $classCounts);
        }

        // Jika tidak ada atribut yang tersisa, kembalikan kelas mayoritas dari data
        if (count($attributes[0]) == 1) {
            return array_search($maxClassCount, $classCounts);
        }

        // Pilih atribut terbaik untuk dibagi
        $bestAttributeIndex = $this->pilihAtributTerbaik($data, $attributes);
        $bestAttribute = $attributes[0][$bestAttributeIndex];
        unset($attributes[0][$bestAttributeIndex]);

        // Pisahkan data berdasarkan nilai atribut terbaik
        $attributeValues = array_unique(array_column($attributes, $bestAttributeIndex));

        foreach ($attributeValues as $value) {
            $subset = $this->separateData($data, $attributes, $value);
            $subsetAttributes = $attributes;
            foreach ($subsetAttributes as &$subsetAttribute) {
                unset($subsetAttribute[$bestAttributeIndex]);
            }

            $tree[$bestAttribute][$value] = $this->pohoKeputusan($subset, $subsetAttributes, $iteration + 1);
        }

        return $tree;
    }

    // Fungsi untuk menampilkan hasil iterasi
    private function displayIteration($iteration, $data, $attributes)
    {
        echo "Iteration $iteration:\n";
        echo "Data:\n";
        print_r($data);
        echo "Attributes:\n";
        print_r($attributes);
        echo "\n";
    }
}

// Contoh penggunaan
$algoritma = new AlgoritmaC45();

// Ambil data dari database
$sql = "SELECT * FROM tb_training";
$result = mysqli_query($conn, $sql);
$data = array();
$attributes = array();

while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row['minat'];
    $attributes[] = array_values($row);
}

// Bangun pohon keputusan
$decisionTree = $algoritma->pohoKeputusan($data, $attributes);

// Tampilkan hasil
echo "Decision Tree:\n";
print_r($decisionTree);
