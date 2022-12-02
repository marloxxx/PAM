package com.example.storage_11321051

import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import java.io.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val fileName = findViewById<EditText>(R.id.editFile)
        val fileData = findViewById<EditText>(R.id.editData)

        val btnSave = findViewById<Button>(R.id.btnSave)
        val btnView = findViewById<Button>(R.id.btnView)

        btnSave.setOnClickListener(View.OnClickListener {
            val file:String = fileName.text.toString()
            val data:String = fileData.text.toString()
            val fileOutputStream : FileOutputStream
            try {
                fileOutputStream = openFileOutput(file, Context.MODE_PRIVATE)
                fileOutputStream.write(data.toByteArray())
            } catch (e: FileNotFoundException) {
                e.printStackTrace()
            } catch (e: NumberFormatException) {
                e.printStackTrace()
            } catch (e: IOException){
                e.printStackTrace()
            } catch (e: Exception){
                e.printStackTrace()
            }
            Toast.makeText(applicationContext, "Data saved", Toast.LENGTH_LONG).show()
            fileData.text.clear()
            fileName.text.clear()
        })

        btnView.setOnClickListener(View.OnClickListener {
            val filename = fileName.text.toString()
            if (filename.toString() != null && filename.toString().trim() != "") {
                val fileInputStream = openFileInput(filename)
                val inputStreamReader : InputStreamReader = InputStreamReader(fileInputStream)
                val bufferedReader : BufferedReader = BufferedReader(inputStreamReader)
                val stringBuilder : StringBuilder = StringBuilder()
                var text: String? = null
                while ({ text = bufferedReader.readLine(); text }() != null) {
                    stringBuilder.append(text)
                }
                fileData.setText(stringBuilder.toString()).toString()
            } else {
                Toast.makeText(applicationContext, "Filename cannot be blank", Toast.LENGTH_LONG).show()
            }
        })
    }
}