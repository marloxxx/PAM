val PI = 3.14 // deklarasi konstanta
var x = 0 // deklarasi variabel

fun incrementX(){
    x += 1 // x ditambah 1 dan hasilnya disimpan kembali ke x, hal ini sama dengan x = x + 1
}
fun main(){
    println("x = $x; PI = $PI") // menampilkan nilai x dan PI
    incrementX() // memanggil fungsi incrementX untuk menambahkan nilai x
    println("incrementX()") // menampilkan nilai x dan PI
    println("x = $x; PI = $PI") // menampilkan nilai x dan PI
}