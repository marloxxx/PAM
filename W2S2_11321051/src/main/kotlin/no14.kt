fun describe(obj: Any): String =
    when(obj){
        1 -> "One"
        "Hello" -> "Greeting"
        is Long -> "Long"
        !is String -> "Not a String"
        else -> "Unknown"
    }
// fungsi describe akan mengembalikan nilai String dengan parameter obj bertipe Any
// artinya fungsi describe dapat menerima parameter dengan tipe data apapun
// fungsi describe akan mengembalikan nilai String dengan parameter obj bertipe Any
// dilakukan pengecekan terhadap objek yang diberikan sebagai parameter
// jika objek tersebut bernilai 1 maka akan mengembalikan nilai "One"
// jika objek tersebut bernilai "Hello" maka akan mengembalikan nilai "Greeting"
// jika objek tersebut bertipe data Long maka akan mengembalikan nilai "Long"
// jika objek tersebut bukan bertipe data String maka akan mengembalikan nilai "Not a String"
// jika objek tersebut tidak memenuhi kondisi di atas maka akan mengembalikan nilai "Unknown"

fun main() {
    println(describe(1))
    println(describe("Hello"))
    println(describe(1000L))
    println(describe(2))
    println(describe("other"))
}