package com.example.kuis1pam_11321051

import android.content.Intent
import android.widget.Button
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity

class RegisterActivity : AppCompatActivity() {
    private lateinit var fullname: EditText
    private lateinit var email: EditText
    private lateinit var username: EditText
    private lateinit var password: EditText
    private lateinit var registerButton: Button

    override fun onStart() {
        super.onStart()
        setContentView(R.layout.activity_register)

        fullname = findViewById(R.id.fullname)
        email = findViewById(R.id.email)
        username = findViewById(R.id.username)
        password = findViewById(R.id.password)
        registerButton = findViewById(R.id.register_btn)

        registerButton.setOnClickListener {
            // when register button is clicked, go to home activity
            // send data to home activity
            val intent = Intent(this, RegisterSuccessActivity::class.java)
            intent.putExtra("fullname", fullname.text.toString())
            intent.putExtra("email", email.text.toString())
            startActivity(intent)
        }
    }
}
