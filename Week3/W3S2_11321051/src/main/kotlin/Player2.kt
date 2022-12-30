class Player2 (_name: String, _healtPoints: Int, _isBlessed: Boolean, _isImmortal: Boolean){
    var name = _name
        get() = field.capitalize()
        private set(value) {
            field = value.trim()
        }

    var healthPoints = _healtPoints
    val isBlessed = _isBlessed
    private val isImmortal = _isImmortal

    fun castFireball(numFireballs: Int = 2) = println("A glass of Fireball springs into existence. (x$numFireballs)")

    fun auraColor(): String {
        val auraVisible = isBlessed && healthPoints > 50 || isImmortal
        val auraColor = if (auraVisible) "GREEN" else "NONE"
        return auraColor
    }
}
// deklarasi class player 2 dengan parameter _name, _healtPoints, _isBlessed, _isImmortal
// class ini memiliki constructor default yang memiliki parameter _name, _healtPoints, _isBlessed, _isImmortal
// class ini memiliki property name, healthPoints, isBlessed, isImmortal
// class ini memiliki function castFireball dan auraColor

fun main() {
    val player = Player2("Madrigal", 89, true, false)
    player.castFireball()

// Player status
    val healtStatus = formatHealtStatus(player.healthPoints, player.isBlessed)
    printPlayerStatus(player)

//    castFireball()

}

fun printPlayerStatus(player: Player2){
    println("(Aura: ${player.auraColor()}) (Blessed: ${if (player.isBlessed) "YES" else "NO"})")
    println("${player.name} ${player.healthPoints}")
}