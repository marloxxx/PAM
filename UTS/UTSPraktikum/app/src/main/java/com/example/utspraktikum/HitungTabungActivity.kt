package com.example.utspraktikum

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class HitungTabungActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hitung_tabung)
    }

    fun luas(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var tinggi = findViewById<EditText>(R.id.tinggi)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()
        var t = tinggi.text.toString().toDouble()

        var luas = 2 * 3.14 * r * (r + t)

        hasil.text = luas.toString()
    }

    fun volume(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var tinggi = findViewById<EditText>(R.id.tinggi)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()
        var t = tinggi.text.toString().toDouble()

        var volume = 3.14 * r * r * t

        hasil.text = volume.toString()
    }
}