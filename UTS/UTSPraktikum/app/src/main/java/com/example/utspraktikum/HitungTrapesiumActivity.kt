package com.example.utspraktikum

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class HitungTrapesiumActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hitung_trapesium)
    }

    fun luas(view: View){

        var atas = findViewById<EditText>(R.id.atas)
        var bawah = findViewById<EditText>(R.id.bawah)
        var tinggi = findViewById<EditText>(R.id.tinggi)
        var hasil = findViewById<TextView>(R.id.hasil)

        var a = atas.text.toString().toDouble()
        var b = bawah.text.toString().toDouble()
        var t = tinggi.text.toString().toDouble()

        var luas = (a + b) * t / 2

        hasil.setText(luas.toString())

    }

    fun keliling(view:View){

        var atas = findViewById<EditText>(R.id.atas)
        var bawah = findViewById<EditText>(R.id.bawah)
        var miring = findViewById<EditText>(R.id.miring)
        var tinggi = findViewById<EditText>(R.id.tinggi)

        var hasil = findViewById<TextView>(R.id.hasil)

        var a = atas.text.toString().toDouble()
        var b = bawah.text.toString().toDouble()
        var m = miring.text.toString().toDouble()
        var t = tinggi.text.toString().toDouble()

        var keliling = a + b + m + t

        hasil.setText(keliling.toString())

    }
}