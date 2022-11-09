fun main() {
    val numbers = mutableListOf(1, 2, 3, 4) // deklarasi variable numbers dengan tipe MutableList<Int> dan nilai awal [1, 2, 3, 4]
    numbers.add(5) // menambahkan elemen 5 ke dalam numbers
    numbers.removeAt(1) // menghapus elemen ke-2 dari numbers
    numbers[0] = 0 // mengubah elemen ke-1 dari numbers menjadi 0
    numbers.shuffle() // mengacak elemen dari numbers
    println(numbers) // menampilkan nilai dari numbers
}