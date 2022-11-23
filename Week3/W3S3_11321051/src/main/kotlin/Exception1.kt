fun main(args: Array<String>) {
    var swordsJuggling: Int? = null // deklarasi variabel swordsJuggling bertipe data Int? dengan nilai null
    val isJugglingProficient = (1..3).shuffled()
        .last() == 3 // deklarasi variabel isJugglingProficient bertipe data Boolean dengan nilai (1..3).shuffled().last() == 3
    if (isJugglingProficient) {
        swordsJuggling = 2
    } // jika isJugglingProficient bernilai true maka swordsJuggling akan bernilai 2

    proficiencyCheck(swordsJuggling) // memanggil fungsi proficiencyCheck() dengan parameter swordsJuggling
    swordsJuggling = swordsJuggling!!.plus(1) // swordsJuggling akan ditambahkan 1

    println("You juggle $swordsJuggling swords!")
}

fun proficiencyCheck(swordsJuggling: Int?) {
    swordsJuggling ?: throw IllegalStateException("Player cannot juggle swords")
}
// deklarasi fungsi proficiencyCheck dengan parameter swordsJuggling bertipe data Int?
// fungsi proficiencyCheck akan mengecek apakah nilai dari swordsJuggling bernilai null atau tidak
// jika bernilai null maka akan mengembalikan nilai IllegalStateException dengan nilai Player cannot juggle swords