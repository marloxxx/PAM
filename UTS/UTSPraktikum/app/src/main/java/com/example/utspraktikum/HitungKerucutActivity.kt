package com.example.utspraktikum

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class HitungKerucutActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hitung_kerucut)
    }

    fun luasAlas(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()

        var luas = 3.14 * r * r

        hasil.text = luas.toString()
    }

    fun volume(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var tinggi = findViewById<EditText>(R.id.tinggi)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()
        var t = tinggi.text.toString().toDouble()

        var volume = 3.14 * r * r * t / 3

        hasil.text = volume.toString()
    }

    fun selimut(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var garisPelukis = findViewById<EditText>(R.id.garisPelukis)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()
        var s = garisPelukis.text.toString().toDouble()

        var selimut = 3.14 * r * s

        hasil.text = selimut.toString()
    }

    fun luasPermukaan(view: View){

        var jarijari = findViewById<EditText>(R.id.jarijari)
        var garisPelukis = findViewById<EditText>(R.id.garisPelukis)
        var hasil = findViewById<TextView>(R.id.hasil)

        var r = jarijari.text.toString().toDouble()
        var s = garisPelukis.text.toString().toDouble()

        var luasPermukaan = 3.14 * r * (r + s)

        hasil.text = luasPermukaan.toString()
    }
}