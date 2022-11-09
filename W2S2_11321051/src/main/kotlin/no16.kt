import java.util.*

fun main() {
    val fruits = listOf("banana", "avocado", "apple", "kiwifruit") // deklarasi variabel fruits dengan tipe data List<String> dan nilai ["banana", "avocado", "apple", "kiwifruit"]
    fruits.filter { it.startsWith("a") } // memfilter nilai dari fruits yang dimulai dengan huruf a
        .sortedBy { it } // mengurutkan nilai dari fruits sesuai abjad
        .map { it.uppercase(Locale.getDefault()) } // mengubah nilai dari fruits yang dimulai dengan huruf a menjadi huruf besar semua
        .forEach{println(it)} // menampilkan nilai dari fruits yang dimulai dengan huruf a dan berurutan sesuai abjad
}