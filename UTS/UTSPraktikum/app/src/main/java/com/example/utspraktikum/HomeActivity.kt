package com.example.utspraktikum

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class HomeActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)

        val button_logout = findViewById(R.id.btn_logout) as Button
        val button_hitung_persegi = findViewById(R.id.btnPersegi) as Button
        val button_hitung_persegi_panjang = findViewById(R.id.btnPersegiPanjang) as Button
        val button_hitung_segitiga = findViewById(R.id.btnSegitiga) as Button
        val button_hitung_lingkaran = findViewById(R.id.btnLingkaran) as Button
        val button_hitung_jajargenjang = findViewById(R.id.btnJajarGenjang) as Button
        val button_trapesium = findViewById(R.id.btnTrapesium) as Button
        val button_belah_ketupat = findViewById(R.id.btnBelahKetupat) as Button
        val button_layang_layang = findViewById(R.id.btnLayangLayang) as Button
        val button_kubus = findViewById(R.id.btnKubus) as Button
        val button_balok = findViewById(R.id.btnBalok) as Button
        val button_tabung = findViewById(R.id.btnTabung) as Button
        val button_bola = findViewById(R.id.btnBola) as Button
        val button_prisma = findViewById(R.id.btnPrisma) as Button

        button_logout.setOnClickListener {
            finish()
        }

        button_hitung_persegi.setOnClickListener {
            val intent = Intent(this, HitungPersegiActivity::class.java)
            startActivity(intent)
        }

        button_hitung_persegi_panjang.setOnClickListener {
            val intent = Intent(this, HitungPersegiPanjangActivity::class.java)
            startActivity(intent)
        }

        button_hitung_segitiga.setOnClickListener {
            val intent = Intent(this, HitungSegitigaActivity::class.java)
            startActivity(intent)
        }

        button_hitung_lingkaran.setOnClickListener {
            val intent = Intent(this, HitungLingkaranActivity::class.java)
            startActivity(intent)
        }

        button_hitung_jajargenjang.setOnClickListener {
            val intent = Intent(this, HitungJajargenjangActivity::class.java)
            startActivity(intent)
        }

        button_trapesium.setOnClickListener {
            val intent = Intent(this, HitungTrapesiumActivity::class.java)
            startActivity(intent)
        }

        button_belah_ketupat.setOnClickListener {
            val intent = Intent(this, HitungBelahKetupatActivity::class.java)
            startActivity(intent)
        }

        button_layang_layang.setOnClickListener {
            val intent = Intent(this, HitungLayangLayangActivity::class.java)
            startActivity(intent)
        }

        button_kubus.setOnClickListener {
            val intent = Intent(this, HitungKubusActivity::class.java)
            startActivity(intent)
        }

        button_balok.setOnClickListener {
            val intent = Intent(this, HitungBalokActivity::class.java)
            startActivity(intent)
        }

        button_tabung.setOnClickListener {
            val intent = Intent(this, HitungTabungActivity::class.java)
            startActivity(intent)
        }

        button_bola.setOnClickListener {
            val intent = Intent(this, HitungBolaActivity::class.java)
            startActivity(intent)
        }

        button_prisma.setOnClickListener {
            val intent = Intent(this, HitungPrismaActivity::class.java)
            startActivity(intent)
        }
    }
}