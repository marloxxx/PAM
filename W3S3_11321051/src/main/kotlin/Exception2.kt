fun main(args: Array<String>) {
    var swordsJuggling: Int? = null // deklarasi variabel swordsJuggling bertipe data Int? dengan nilai null
    val isJugglingProficient = (1..3).shuffled().last() == 3 // deklarasi variabel isJugglingProficient bertipe data Boolean dengan nilai (1..3).shuffled().last() == 3
    if (isJugglingProficient) {
        swordsJuggling = 2
    } // jika isJugglingProficient bernilai true maka swordsJuggling akan bernilai 2
    proficiencyCheck2(swordsJuggling) // memanggil fungsi proficiencyCheck2() dengan parameter swordsJuggling
    swordsJuggling = swordsJuggling!!.plus(1) // swordsJuggling akan ditambahkan 1

    println("You juggle $swordsJuggling swords!") // mencetak nilai dari variabel swordsJuggling
}

fun proficiencyCheck2(swordsJuggling: Int?) {
    swordsJuggling ?: throw UnskilledSwordJugglerException()
} // deklarasi fungsi proficiencyCheck2 dengan parameter swordsJuggling bertipe data Int?
// fungsi proficiencyCheck2 akan mengecek apakah nilai dari swordsJuggling bernilai null atau tidak
// jika bernilai null maka akan mengembalikan nilai UnskilledSwordJugglerException

class UnskilledSwordJugglerException : IllegalStateException("Player cannot juggle swords")
// deklarasi class UnskilledSwordJugglerException dengan nilai Player cannot juggle swords
