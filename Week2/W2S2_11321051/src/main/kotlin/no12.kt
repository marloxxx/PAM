fun main() {
    val items = listOf("apple", "banana", "kiwifruit") // deklarasi variabel items dengan tipe data List<String> dan nilai ["apple", "banana", "kiwifruit"]
    for (index in items.indices){
        println(index)
    }
//    dilakukan iterasi terhadap setiap item di dalam items untuk menampilkan item tersebut namun dengan menggunakan indeks
//    indeks dimulai dari 0 namun yang akan ditampilkan adalah indeksnya bukan nilai dari indeks tersebut
}