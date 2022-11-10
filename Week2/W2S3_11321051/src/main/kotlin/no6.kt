data class Person(val name: String, var age: Int) // deklarasi data class Person dengan parameter name bertipe data String dan age bertipe data Int

fun main() {
    val bob = Person("Bob", 31) // deklarasi variabel bob dengan tipe data Person dan nilai Person("Bob", 31)
    val people = listOf<Person>(Person("Adam", 20), bob, bob) // deklarasi variabel people dengan tipe data List<Person> dan nilai [Person("Adam", 20), bob, bob]
    val people2 = listOf<Person>(Person("Adam", 20), Person("Bob", 31), bob) // deklarasi variabel people2 dengan tipe data Set<Person> dan nilai [Person("Adam", 20), Person("Bob", 31), bob]
    println(people == people2) // cek apakah people dan people2 memiliki nilai yang sama dan menampilkan hasilnya
    bob.age = 32 // mengubah nilai age dari bob menjadi 32
    println(people == people2) // cek apakah people dan people2 memiliki nilai yang sama dan menampilkan hasilnya
}