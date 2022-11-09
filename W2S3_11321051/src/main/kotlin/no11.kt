fun main() {
    val numbersMap = mutableMapOf("one" to 1, "two" to 2) // deklarasi variable numbersMap dengan tipe MutableMap<String, Int> dan nilai awal {"one": 1, "two": 2}
    numbersMap.put("three", 3) // menambahkan elemen {"three": 3} ke dalam numbersMap
    numbersMap["one"] = 11 // mengubah nilai elemen "one" menjadi 11
    println(numbersMap) // menampilkan nilai dari numbersMap
}