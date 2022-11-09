fun printAll(strings: Collection<String>){
    for (s in strings) print("$s ")
    println()
}
// fungsi printAll memiliki parameter strings bertipe Collection<String>
// fungsi printAll akan menampilkan semua elemen dari strings

fun main() {
    val stringList = listOf("one", "two", "one") // deklarasi stringList dengan tipe List<String> dan nilai awal ["one", "two", "one"]
    printAll(stringList) // memanggil fungsi printAll dengan parameter stringList

    val stringSet = setOf("one", "two", "three") // deklarasi stringSet dengan tipe Set<String> dan nilai awal ["one", "two", "three"]
    printAll(stringSet) // memanggil fungsi printAll dengan parameter stringSet

//    perbedaan antara List dan Set adalah List dapat memiliki nilai yang sama sedangkan Set tidak dapat memiliki nilai yang sama
}