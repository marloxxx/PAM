fun main() {
    val items = setOf("apple", "banana", "kiwifruit") // deklarasi variabel items dengan tipe data Set<String> dan nilai ["apple", "banana", "kiwifruit"]
    when{
        "oramge" in items -> println("juicy") // jika "oramge" ada di dalam items maka akan menampilkan "juicy"
        "apple" in items -> println("apple is fine to") // jika "apple" ada di dalam items maka akan menampilkan "apple is fine to"
    }
//    dilakukan pengecekan terhadap setiap item di dalam items untuk menampilkan item tersebut
}