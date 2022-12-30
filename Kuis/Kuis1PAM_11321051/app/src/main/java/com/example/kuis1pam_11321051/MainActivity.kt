
package com.example.kuis1pam_11321051

import android.content.Intent
import android.net.Uri
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity : AppCompatActivity() {
    private lateinit var registerButton: Button
    private lateinit var loginButton: Button
    private lateinit var gmailButton: Button
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        registerButton = findViewById(R.id.register_view)
        loginButton = findViewById(R.id.login_view)
        gmailButton = findViewById(R.id.gmail)

        registerButton.setOnClickListener {
            // when register button is clicked, go to register activity
            val intent = Intent(this, RegisterActivity::class.java)
            startActivity(intent)
        }

        loginButton.setOnClickListener {
            // when login button is clicked, go to login activity
            val intent = Intent(this, LoginActivity::class.java)
            startActivity(intent)
        }

        gmailButton.setOnClickListener {
            // when gmail button is clicked, go to google sign in page
            val intent = Intent(Intent.ACTION_VIEW, Uri.parse("https://accounts.google.com/v3/signin/identifier?dsh=S1024423060%3A1668585293538230&authuser=0&continue=https%3A%2F%2Fwww.google.com%2F%3Fpli%3D1&ec=GAlAmgQ&hl=id&flowName=GlifWebSignIn&flowEntry=AddSession"))
            startActivity(intent)
        }
    }
}