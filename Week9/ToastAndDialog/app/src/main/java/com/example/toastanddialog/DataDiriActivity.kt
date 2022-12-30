package com.example.toastanddialog

import android.content.DialogInterface
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity

class DataDiriActivity:AppCompatActivity() {
    private lateinit var nim: EditText
    private lateinit var nama: EditText
    private lateinit var prodi: Spinner
    private lateinit var birthdate: Button
    private lateinit var bloodtype: Spinner
    private lateinit var register_btn: Button
    private val positiveButtonClick = { _: DialogInterface, _: Int ->
        Toast.makeText(
            applicationContext,
            R.string.yes, Toast.LENGTH_SHORT
        ).show()
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_data_diri)

        nim = findViewById(R.id.nim)
        nama = findViewById(R.id.name)
        prodi = findViewById(R.id.prodi)
        birthdate = findViewById(R.id.birthdate)
        bloodtype = findViewById(R.id.bloodtype)
        register_btn = findViewById(R.id.register_btn)

        birthdate.setOnClickListener {
//            when click this button, it will show a calendar to choose the date
            val builder = AlertDialog.Builder(this)
            with(builder) {
                setTitle("Birthdate")
                setMessage("Please choose your birthdate")
                setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                show()
            }
        }
        register_btn.setOnClickListener {
            // when register button is clicked, check all fields
            // if all fields are filled, show toast
            // if not, show dialog
            if (nim.text.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("NIM is empty")
                    setMessage("Please fill the NIM field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else if (nama.text.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Name is empty")
                    setMessage("Please fill the name field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else if (prodi.selectedItem.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Prodi is empty")
                    setMessage("Please fill the prodi field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else if (birthdate.text.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Birthdate is empty")
                    setMessage("Please fill the birthdate field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else if (bloodtype.selectedItem.toString().isEmpty()){
                val builder = AlertDialog.Builder(this)
                with(builder) {
                    setTitle("Bloodtype is empty")
                    setMessage("Please fill the bloodtype field")
                    setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
                    show()
                }
            } else {
                Toast.makeText(this, "Register Success", Toast.LENGTH_SHORT).show()
            }
        }
    }
}