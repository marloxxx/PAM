package com.example.utspraktikum

import android.app.AlertDialog
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity


class RegisterActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_register)

        val button_login = findViewById(R.id.login_btn) as Button

        button_login.setOnClickListener {
            val intent = Intent(this, LoginActivity::class.java)
            startActivity(intent)
        }
    }

    fun register(view: View) {

        val builder = AlertDialog.Builder(this)
        val nik = findViewById<EditText>(R.id.nik)
        val fullname = findViewById<EditText>(R.id.fullname)
        val phone = findViewById<EditText>(R.id.phone)
        val username = findViewById<EditText>(R.id.username)
        val password = findViewById<EditText>(R.id.password)

        if (nik.text.toString().isEmpty() || fullname.text.toString().isEmpty() || phone.text.toString().isEmpty() || username.text.toString().isEmpty() || password.text.toString().isEmpty()) {
            builder.setTitle("Register Gagal")
            builder.setMessage("Data tidak boleh kosong")
            builder.setPositiveButton("OK", null)
            builder.show()
        } else if (nik.text.toString().matches(Regex("[0-9]+")) == false || nik.text.toString().length != 16) {
            builder.setTitle("Register Gagal")
            builder.setMessage("KTP harus berupa angka dan 16 digit")
            builder.setPositiveButton("OK", null)
            builder.show()
        } else if (phone.text.toString().matches(Regex("[0-9]+")) == false || phone.text.toString().length != 12) {
            builder.setTitle("Register Gagal")
            builder.setMessage("Nomor HP harus berupa angka dan 12 digit")
            builder.setPositiveButton("OK", null)
            builder.show()
        } else if (password.text.toString().length < 8) {
            builder.setTitle("Register Gagal")
            builder.setMessage("Password minimal 8 karakter")
            builder.setPositiveButton("OK", null)
            builder.show()
        } else {
            val intent = Intent(this, LoginActivity::class.java)
            startActivity(intent)
        }
    }
}