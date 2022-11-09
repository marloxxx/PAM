fun maxOf2(a:Int, b:Int) = if (a>b) a else b
// fungsi maxOf2 adalah bentuk singkat dari fungsi maxOf1
// dimana fungsi maxOf2 tidak memiliki return type dan tidak memiliki tanda kurung kurawal di dalam fungsi tersebut

fun main() {
    println("max of 0 and 42 is ${maxOf2(0,42)}")
}
