object Learn{

    @JvmStatic
    fun main(args: Array<String>){
        val letters1 = arrayOf("A", "B", "C", "A", "B")
        findSameLetter(letters1)
    }

    private fun findSameLetter(letters : Array<String>){
        var sameLetter = "false"
        for (i in 0 until letters.size){
            for (j in i+1 until letters.size){
                if (i!=j && letters[i] == letters[j]) sameLetter = letters[i]
            }
        }
        println("Same letter is ${sameLetter}")
    }
}