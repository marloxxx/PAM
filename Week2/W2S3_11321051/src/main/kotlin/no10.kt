fun main() {
    val numbersMap = mapOf("key1" to 1, "key2" to 2, "key3" to 3, "key4" to 1) // deklarasi variable numbersMap dengan tipe Map<String, Int> dan nilai awal {"key1": 1, "key2": 2, "key3": 3, "key4": 1}
    val anotherMap = mapOf("key2" to 2, "key3" to 1, "key4" to 1, "key1" to 3) // deklarasi variable anotherMap dengan tipe Map<String, Int> dan nilai awal {"key2": 2, "key3": 1, "key4": 1, "key1": 3}

    println("The maps are equal: ${numbersMap == anotherMap}") // menampilkan apakah numbersMap dan anotherMap memiliki nilai yang sama, jika sama maka akan menampilkan "The maps are equal: true"
}