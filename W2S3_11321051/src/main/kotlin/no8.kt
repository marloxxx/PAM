fun main() {
    val numbers = setOf(1, 2, 3, 4) // deklarasi variable numbers dengan tipe Set<Int> dan nilai awal [1, 2, 3, 4]
    val numbersBackwards = setOf(4, 3, 2, 1) // deklarasi variable numbersBackwards dengan tipe Set<Int> dan nilai awal [4, 3, 2, 1]

    println(numbers.first() == numbersBackwards.first()) // menampilkan apakah elemen pertama dari numbers sama dengan elemen pertama dari numbersBackwards
    println(numbers.first() == numbersBackwards.last()) // menampilkan apakah elemen pertama dari numbers sama dengan elemen terakhir dari numbersBackwards
}