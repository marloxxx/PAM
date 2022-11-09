open class Room2(val name: String) {
    fun description() = "Room : $name"
    open fun load() = "Nothing much to see here..."
}
// deklarasi class Room2 dengan parameter name bertipe data String
// namun class Room ini merupakan class indukan yang ditandai dengan keyword open

class TownSquare : Room2("Town Square") {
    override fun load() = "The villagers rally and cheer as you enter!"
}
// deklarasi class TownSquare yang merupakan turunan dari class Room2
// fungsi load() pada class TownSquare akan mengembalikan nilai bertipe data String dengan nilai The villagers rally and cheer as you enter!

fun main() {
    val player = Player("Madrigal") // deklarasi variabel player bertipe data Player dengan nilai "Madrigal"
    player.castFireball() // memanggil fungsi castFireball() pada variabel player

    var currentRoom: Room2 = TownSquare() // deklarasi variabel currentRoom bertipe data Room2 dengan nilai TownSquare()
    println(currentRoom.description()) // memanggil fungsi description() pada variabel currentRoom
    println(currentRoom.load()) // memanggil fungsi load() pada variabel currentRoom

    // Player status
    printPlayerStatus(player) // memanggil fungsi printPlayerStatus() dengan parameter player
}