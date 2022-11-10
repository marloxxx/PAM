fun main() {
    val numbersMap = mapOf("key1" to 1, "key2" to 2, "key3" to 3, "key4" to 1) // deklarasi variable numbersMap dengan tipe Map<String, Int> dan nilai awal {"key1": 1, "key2": 2, "key3": 3, "key4": 1}

    println("All keys: ${numbersMap.keys}") // menampilkan semua kunci dari numbersMap
    println("All values: ${numbersMap.values}") // menampilkan semua nilai dari numbersMap
    if("key2" in numbersMap) println("Value by key \"key2\": ${numbersMap["key2"]}") // menampilkan nilai dari kunci "key2" jika kunci tersebut ada di dalam numbersMap
    if(1 in numbersMap.values) println("The value 1 is in the map") // menampilkan apakah nilai 1 ada di dalam numbersMap jika ada maka akan menampilkan "The value 1 is in the map"
    if(numbersMap.containsValue(1)) println("The value 1 is in the map") // menampilkan apakah nilai 1 ada di dalam numbersMap namun dengan menggunakan fungsi containsValue jika ada maka akan menampilkan "The value 1 is in the map"
}