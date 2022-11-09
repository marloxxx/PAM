class Player3(_name: String, var _healthPoints: Int, val _isBlessed: Boolean, private val _isImmortal: Boolean) {
    var name = _name
        get() = field.capitalize()
        private set(value) {
            field = value.trim()
        }

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
// deklarasi class player 3 dengan parameter _name, _healtPoints, _isBlessed, _isImmortal
// class ini memiliki constructor default yang memiliki parameter _name, _healtPoints, _isBlessed, _isImmortal
// class ini juga memiliki constructor secondary yang memiliki parameter name dan memiliki nilai default _healthPoints = 100, _isBlessed = true, _isImmortal = false
// class ini memiliki rule bahwa _healthPoints harus lebih besar dari 0 dan name tidak boleh kosong

fun main() {
    val player = Player3("Madrigal")
    player.castFireball()

    // Player status
    val healtStatus = formatHealtStatus(player._healthPoints, player._isBlessed)
    printPlayerStatus(player)

//    castFireball()
}

fun printPlayerStatus(player: Player3){
    println("(Aura: ${player.auraColor()}) (Blessed: ${if (player._isBlessed) "YES" else "NO"})")
    println("${player.name} ${player._healthPoints}")
}

