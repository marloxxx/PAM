fun List<String>.getShortWordsTo(shortWords: MutableList<String>, maxLength: Int){
    this.filterTo(shortWords) { it.length <= maxLength }
    val articles = setOf("a", "A", "an", "An", "the", "The")
    shortWords -= articles
}
// fungsi getShortWordsTo memiliki parameter shortWords bertipe MutableList<String> dan maxLength bertipe Int
// fungsi getShortWordsTo akan menambahkan elemen dari this yang panjangnya kurang dari atau sama dengan maxLength ke dalam shortWords
// fungsi getShortWordsTo juga akan menghapus elemen dari shortWords yang merupakan artikel

fun main() {
    val words = "A long time ago in a galaxy far far away".split(" ")
    // deklarasi words dengan nilai "A long time ago in a galaxy far far away" yang kemudian dipecah menjadi List<String> dengan pemisah " "
    val shortWords = mutableListOf<String>() // deklarasi shortWords dengan tipe MutableList<String> dan nilai awal []
    words.getShortWordsTo(shortWords, 3) // memanggil fungsi getShortWordsTo dengan parameter shortWords dan 3
    println(shortWords) // menampilkan nilai dari shortWords

//    perbedaan antara list dan mutable list adalah list tidak dapat diubah sedangkan mutable list dapat diubah
}