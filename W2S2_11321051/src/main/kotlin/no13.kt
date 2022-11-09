fun main() {
    val items = listOf("apple", "banana", "kiwifruit") // deklarasi variabel items dengan tipe data List<String> dan nilai ["apple", "banana", "kiwifruit"]
    var index = 0 // deklarasi variabel index dengan tipe data Int dan nilai 0
    while (index < items.size){
        println("item at $index is ${items[index]}")
        index++
    }
//    dilakukan iterasi terhadap setiap item di dalam items untuk menampilkan item tersebut namun dengan menggunakan indeks
//    indeks dimulai dari 0 sampai dengan items.size - 1
//    nilai dari indeks tersebut ditampilkan dengan menggunakan ${items[index]}
}