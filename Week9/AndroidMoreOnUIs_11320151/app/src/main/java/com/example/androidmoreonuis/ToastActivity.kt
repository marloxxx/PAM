package com.example.androidmoreonuis

import android.os.Bundle
import android.widget.Button
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class ToastActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_toast)

        var button_confirm = findViewById(R.id.button_confirm) as Button
        var button_cancel = findViewById(R.id.button_cancel) as Button

        button_confirm.setOnClickListener {
            // Pada saat tombol confirm ditekan, maka akan berbentuk toast
            Toast.makeText(this, "Thank You For Your Confirmation", Toast.LENGTH_SHORT).show()
        }

        button_cancel.setOnClickListener {
            // Pada saat tombol cancel ditekan, maka akan berbentuk toast
            Toast.makeText(this, "Cancel", Toast.LENGTH_SHORT).show()
        }
    }
}
