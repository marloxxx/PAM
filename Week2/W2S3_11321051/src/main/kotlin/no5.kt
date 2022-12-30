fun main() {
    val numbers = listOf("one", "two", "three", "four") // deklarasi variable numbers dengan tipe List<String> dan nilai awal ["one", "two", "three", "four"]
    println("Number of elements: ${numbers.size}") // menampilkan jumlah elemen dari numbers
    println("Third element: ${numbers.get(2)}") // menampilkan elemen ke-3 dari numbers dengan menggunakan fungsi get dengan parameter 2 karena indeks dimulai dari 0
    println("Fourth element: ${numbers[3]}") // menampilkan elemen ke-4 dari numbers dengan menggunakan indeks
    println("Index of element \"two\" ${numbers.indexOf("two")}") // menampilkan indeks dari elemen "two" dengan menggunakan fungsi indexOf dengan parameter "two"
}