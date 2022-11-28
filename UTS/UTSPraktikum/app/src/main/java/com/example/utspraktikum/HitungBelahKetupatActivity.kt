package com.example.utspraktikum

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class HitungBelahKetupatActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hitung_belah_ketupat)
    }

    fun luas(view: View){

        var sisi = findViewById<EditText>(R.id.sisi)
        var diagonal1 = findViewById<EditText>(R.id.diagonal1)
        var diagonal2 = findViewById<EditText>(R.id.diagonal2)
        var hasil = findViewById<TextView>(R.id.hasil)

        var s = sisi.text.toString().toDouble()
        var d1 = diagonal1.text.toString().toDouble()
        var d2 = diagonal2.text.toString().toDouble()

        var luas = (d1 * d2) / 2

        hasil.setText(luas.toString())
    }

    fun keliling(view: View){

        var sisi = findViewById<EditText>(R.id.sisi)
        var hasil = findViewById<TextView>(R.id.hasil)

        var s = sisi.text.toString().toDouble()

        var keliling = 4 * s

        hasil.setText(keliling.toString())
    }
}