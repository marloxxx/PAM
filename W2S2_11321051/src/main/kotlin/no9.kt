fun maxOf(a:Int, b:Int):Int{
    if (a>b){
        return a
    } else {
        return b
    }
}
// fungsi maxOf merupakan fungsi untuk mencari nilai terbesar dari dua nilai yang diberikan sebagai parameter
// fungsi maxOf memiliki return type Int dan memiliki parameter a dan b bertipe Int

fun main(){
    println("max of 0 and 42 is ${maxOf(0,42)}") // fungsi maxOf dipanggil dengan parameter 0 dan 42 dan hasilnya ditampilkan di layar dengan println
}

