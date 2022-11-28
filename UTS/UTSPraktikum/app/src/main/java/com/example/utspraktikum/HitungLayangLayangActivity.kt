package com.example.utspraktikum

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView

class HitungLayangLayangActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hitung_layang_layang)
    }

    fun luas(view: View){

        var diagonal1 = findViewById<EditText>(R.id.diagonal1)
        var diagonal2 = findViewById<EditText>(R.id.diagonal2)
        var hasil = findViewById<TextView>(R.id.hasil)

        var d1 = diagonal1.text.toString().toDouble()
        var d2 = diagonal2.text.toString().toDouble()

        var luas = (d1 * d2) / 2

        hasil.text = luas.toString()
    }

    fun keliling(view: View){

        var sisi1 = findViewById<EditText>(R.id.sisi1)
        var sisi2 = findViewById<EditText>(R.id.sisi2)
        var hasil = findViewById<TextView>(R.id.hasil)

        var s1 = sisi1.text.toString().toDouble()
        var s2 = sisi2.text.toString().toDouble()

        var keliling = 2 * (s1 + s2)

        hasil.text = keliling.toString()
    }
}