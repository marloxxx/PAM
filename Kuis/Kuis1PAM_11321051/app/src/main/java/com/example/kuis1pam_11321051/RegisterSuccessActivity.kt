package com.example.kuis1pam_11321051

import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class RegisterSuccessActivity : AppCompatActivity(){
// get data from intent
    private val fullname = intent.getStringExtra("fullname")
    private val email = intent.getStringExtra("email")
    private lateinit var information : TextView

    override fun onStart() {
        super.onStart()
        setContentView(R.layout.activity_register_success)

        information = findViewById(R.id.information)

        // set text to textview
        information.text = "Thank you for registering\nYour name : $fullname\nYour email : $email"
    }
}
