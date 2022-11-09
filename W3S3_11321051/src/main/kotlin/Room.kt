class Room(val name: String) {
    fun description() = "Room : $name"

    fun load() = "Nothing much to see here..."
}
// deklarasi class Room dengan parameter name bertipe data String
// fungsi description() mengembalikan nilai bertipe data String dengan nilai Room : $name
// fungsi load() mengembalikan nilai bertipe data String dengan nilai Nothing much to see here...

fun main(args: Array<String>) {
    val player = Player("Madrigal")// deklarasi variabel player bertipe data Player dengan nilai "Madrigal"
    player.castFireball() // memanggil fungsi castFireball() pada variabel player

    var currentRoom = Room("Foyer") // deklarasi variabel currentRoom bertipe data Room dengan nilai "Foyer"
    println(currentRoom.description()) // memanggil fungsi description() pada variabel currentRoom
    println(currentRoom.load()) // memanggil fungsi load() pada variabel currentRoom

    // Player status
    printPlayerStatus(player)
}
