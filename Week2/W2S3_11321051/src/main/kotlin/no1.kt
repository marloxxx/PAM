fun printSum(a:Int, b:Int): Unit{
    println("sum of $a and $b is ${a+b}")
}
// fungsi printSum memiliki return type Unit dan memiliki parameter a dan b bertipe Int
// fungsi printSum akan menampilkan output sum of a and b is a + b

fun main() {
    printSum(-1, 8) // fungsi printSum dipanggil dengan parameter -1 dan 8 dan hasilnya ditampilkan di layar dengan println
}