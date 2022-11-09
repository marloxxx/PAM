class Player1 {
    var name = "madrigal"
        get() = field.capitalize()
        set(value) {
            field = value.trim()
        }
    fun castFireballs(numFireballs: Int = 2) = println("A glass of Fireball springs into existence. (x$numFireballs)")
}
// deklarasi class player 1 dengan satu properti yaitu name
// properti name memiliki getter dan setter
// getter akan mengembalikan nilai dari properti name yang sudah diubah menjadi huruf kapital
// setter akan mengubah nilai dari properti name yang sudah diubah menjadi huruf kapital
// deklarasi fungsi castFireballs dengan nilai default 2

fun main() {
    val healtPoints = 89 // deklarasi variabel healtPoints dengan nilai 89
    val isBlessed = true // deklarasi variabel isBlessed dengan nilai true
    val isImmortal = false // deklarasi variabel isImmortal dengan nilai false

    var player = Player1() // deklarasi variabel player dengan tipe data Player1
    player.castFireballs() // memanggil fungsi castFireballs pada variabel player

// Aura
    val auraColor = auraColor(isBlessed, healtPoints, isImmortal) // deklarasi variabel auraColor dengan nilai dari fungsi auraColor

// Player status
    val healtStatus = formatHealtStatus(healtPoints, isBlessed) // deklarasi variabel healtStatus dengan nilai dari fungsi formatHealtStatus
    printPlayerStatus(auraColor, isBlessed, player.name, healtStatus) // memanggil fungsi printPlayerStatus

//    castFireball()
}

fun printPlayerStatus(auraColor: Any, blessed: Boolean, name: Any, healtStatus: Any) {
    println("(Aura: $auraColor) (Blessed: ${if (blessed) "YES" else "NO"})")
    println("$name $healtStatus")

}
// deklarasi fungsi printPlayerStatus dengan parameter auraColor, blessed, name, healtStatus
// fungsi printPlayerStatus akan mencetak nilai dari parameter auraColor, blessed, name, healtStatus

fun formatHealtStatus(healtPoints: Int, blessed: Boolean): Any {
    val healtStatus = when (healtPoints) {
        100 -> "is in excellent condition!"
        in 90..99 -> "has a few scratches."
        in 75..89 -> if (blessed) {
            "has some minor wounds but is healing quite quickly!"
        } else {
            "has some minor wounds."
        }
        in 15..74 -> "looks pretty hurt."
        else -> "is in awful condition!"
    }
    return healtStatus
}
// deklarasi fungsi formatHealtStatus dengan parameter healtPoints dan blessed
// fungsi formatHealtStatus akan mengembalikan nilai healtStatus yang didapat dari when expression

fun auraColor(blessed: Boolean, healtPoints: Int, immortal: Boolean): Any {
    val auraVisible = blessed && healtPoints > 50 || immortal
    val auraColor = if (auraVisible) "GREEN" else "NONE"
    return auraColor
}
// deklarasi fungsi auraColor dengan parameter blessed, healtPoints, immortal
// fungsi auraColor akan mengembalikan nilai auraColor yang didapat dari if expression