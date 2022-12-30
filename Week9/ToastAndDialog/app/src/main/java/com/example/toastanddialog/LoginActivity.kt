package com.example.toastanddialog

import android.content.DialogInterface
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity

class LoginActivity: AppCompatActivity() {
    private lateinit var username: EditText
    private lateinit var password: EditText
    private lateinit var loginButton: Button
    private val positiveButtonClick = { _: DialogInterface, _: Int ->
        Toast.makeText(
            applicationContext,
            R.string.yes, Toast.LENGTH_SHORT
        ).show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        username = findViewById(R.id.username)
        password = findViewById(R.id.password)
        loginButton = findViewById(R.id.login_btn)

        loginButton.setOnClickListener {
            // when login button is clicked, check all fields
            // if all fields are filled, show toast
            // if not, show dialog
            if (username.text.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Username is empty")
                    setMessage("Please fill the username field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else if (password.text.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Password is empty")
                    setMessage("Please fill the password field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else {
                Toast.makeText(this, "Login Success", Toast.LENGTH_SHORT).show()
            }
        }
    }
}