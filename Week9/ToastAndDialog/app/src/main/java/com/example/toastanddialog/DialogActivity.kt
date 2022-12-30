package com.example.toastanddialog

import android.content.DialogInterface
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class DialogActivity : AppCompatActivity() {
    val positiveButtonClick = { dialog: DialogInterface, which: Int ->
        Toast.makeText(
            applicationContext,
            R.string.yes, Toast.LENGTH_SHORT
        ).show()
    }

    val negativeButtonClick = { dialog: DialogInterface, which: Int ->
        Toast.makeText(
            applicationContext,
            R.string.no, Toast.LENGTH_SHORT
        ).show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dialog)
    }
}
