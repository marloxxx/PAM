// This is an end-of-line comment

/* This is a block comment
    on multiple lines. */

/* The comment started here
/* contains a nested comment */
 */

fun main(){
    var a = 1 // a adalah variabel bertipe Int dengan nilai 1
//    simple name in template
    val s1 = "a is $a" // s1 adalah variabel bertipe String dengan nilai "a is 1"

    a = 2 // a diubah menjadi 2
    val s2 = "${s1.replace("is", "was")}, but now is $a" // is diubah menjadi was dengan fungsi replace
    println(s2)
}