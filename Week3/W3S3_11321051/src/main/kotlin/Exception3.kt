fun main(args: Array<String>) {
    var swordsJuggling: Int? = null // deklarasi variabel swordsJuggling bertipe data Int? dengan nilai null
    val isJugglingProficient = (1..3).shuffled().last() == 3 // deklarasi variabel isJugglingProficient bertipe data Boolean dengan nilai (1..3).shuffled().last() == 3
    if (isJugglingProficient) {
        swordsJuggling = 2
    } // jika isJugglingProficient bernilai true maka swordsJuggling akan bernilai 2
    try {
        proficiencyCheck3(swordsJuggling)
        swordsJuggling = swordsJuggling!!.plus(1)
    } catch (e: Exception) {
        println(e)
    }
    // mencoba memanggil fungsi proficiencyCheck3() dengan parameter swordsJuggling
    // jika terjadi error maka akan mengeksekusi kode yang ada di dalam catch
    // jika tidak maka swordsJuggling akan ditambahkan 1s

    println("You juggle $swordsJuggling swords!")
}

fun proficiencyCheck3(swordsJuggling: Int?) {
    swordsJuggling ?: throw UnskilledSwordJugglerException2()
}

class UnskilledSwordJugglerException2 : IllegalStateException("Player cannot juggle swords")
