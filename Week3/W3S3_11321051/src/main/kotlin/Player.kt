class Player(_name: String, var _healthPoints: Int, val _isBlessed: Boolean, private val _isImmortal: Boolean) {
    var name = _name
        get() = field.capitalize()
        private set(value) {
            field = value.trim()
        }
// 
    constructor(name: String) : this(
        name,
        _healthPoints = 100,
        _isBlessed = true,
        _isImmortal = false
    )

    init {
        require(_healthPoints > 0, { "healthPoints must be greater than zero." })
        require(name.isNotBlank(), {"Player must have a name"})
    }
    fun castFireball(numFireballs: Int = 2) = println("A glass of Fireball springs into existence. (x$numFireballs)")

    fun auraColor(): String {
        val auraVisible = _isBlessed && _healthPoints > 50 || _isImmortal
        val auraColor = if (auraVisible) "GREEN" else "NONE"
        return auraColor
    }
}

fun main() {
    val player = Player("Madrigal")
    player.castFireball()

    // Player status
    printPlayerStatus(player)
}

fun printPlayerStatus(player: Player){
    println("(Aura: ${player.auraColor()}) (Blessed: ${if (player._isBlessed) "YES" else "NO"})")
    println("${player.name} ${player._healthPoints}")
}