package com.example.formdatadiri

import android.content.Context
import java.io.BufferedReader
import java.io.InputStreamReader

class FileHelper(private val context: Context?) {

    fun save(fileName: String, data: DataDiri) {
        val fileOutputStream = context?.openFileOutput(fileName, Context.MODE_PRIVATE)
        fileOutputStream?.write(data.toString().toByteArray())
        fileOutputStream?.close()
    }

    fun read(fileName: String): DataDiri {
        val fileInputStream = context?.openFileInput(fileName)
        val inputStreamReader = InputStreamReader(fileInputStream)
        val bufferedReader = BufferedReader(inputStreamReader)
        val stringBuilder = StringBuilder()
        var text: String?
        while (run {
                text = bufferedReader.readLine()
                text
            } != null) {
            stringBuilder.append(text)
        }

        return DataDiri(stringBuilder.toString())
    }
}
