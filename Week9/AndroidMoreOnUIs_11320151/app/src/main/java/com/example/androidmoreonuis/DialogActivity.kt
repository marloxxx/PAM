package com.example.androidmoreonuis

import android.annotation.SuppressLint
import android.app.AlertDialog
import android.content.DialogInterface
import android.graphics.Color
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import java.util.*
import kotlin.collections.ArrayList

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

    val neutralButtonClick = { dialog: DialogInterface, which: Int ->
        Toast.makeText(
            applicationContext,
            "Maybe", Toast.LENGTH_SHORT
        ).show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dialog)
    }

    fun basicAlert(view: View) {
        val builder = AlertDialog.Builder(this)
        with(builder) {
            setTitle("Android Alert")
            setMessage("We have a message")
            setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
            setNegativeButton(
                R.string.no,
                DialogInterface.OnClickListener(function = negativeButtonClick)
            )
            setNeutralButton(
                "Maybe",
                DialogInterface.OnClickListener(function = neutralButtonClick)
            )
            show()
        }
    }

    fun withIconsAndCustomize(view: View) {
        val builder = android.app.AlertDialog.Builder(this)
        with(builder) {
            setTitle("Icon and Button Color")
            setMessage("We have a message")
            setPositiveButton("OK", null)
            setNegativeButton("Cancel", null)
            setNeutralButton("Maybe", null)
            // setPositiveButtonIcon(resources.getDrawable(R.drawable.ic_menu_call, theme))
            setIcon(resources.getDrawable(R.drawable.ic_launcher_background, theme))
        }
        val alertDialog = builder.create()
        alertDialog.show()

        val button = alertDialog.getButton(android.app.AlertDialog.BUTTON_POSITIVE)
        with(button) {
            setBackgroundColor(Color.BLACK)
            setPadding(0, 0, 20, 0)
            setTextColor(Color.WHITE)
        }
    }

    fun withItems(view: View) {

        val items = arrayOf("Apple", "Banana", "Orange", "Grapes")
        val builder = android.app.AlertDialog.Builder(this)
        with(builder) {
            setTitle("List of Items")
            setItems(items) { dialog, which ->
                Toast.makeText(
                    applicationContext,
                    items[which],
                    Toast.LENGTH_SHORT
                ).show()
            }

            setPositiveButton("OK", positiveButtonClick)
            show()
        }
    }

    fun withMultiChoiceList(view: View) {

        val items = arrayOf("Microsoft", "Apple", "Amazon", "Google")
        val selectedList = ArrayList<Int>()
        val builder = AlertDialog.Builder(this)

        builder.setTitle("This is list choice dialog box")
        builder.setMultiChoiceItems(items, null) { dialog, which, isChecked ->
            if (isChecked) {
                selectedList.add(which)
            } else if (selectedList.contains(which)) {
                selectedList.remove(Integer.valueOf(which))
            }
        }

        builder.setPositiveButton("DONE") { dialogInterface, i ->
            val selectedString = ArrayList<String>()
            for (j in selectedList.indices) {
                selectedString.add(items[selectedList[j]])
            }

            Toast.makeText(
                applicationContext,
                "Items selected are " + Arrays.toString(selectedString.toTypedArray()),
                Toast.LENGTH_SHORT
            ).show()
        }

        builder.show()
    }

    fun withStyle(view: View) {
        val builder = AlertDialog.Builder(this, R.style.Holo_SegmentedButton)
        with(builder) {
            setTitle("Androidly Alert")
            setMessage("We have a message")
            setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
            setNegativeButton(R.string.no, negativeButtonClick)
            setNeutralButton("Maybe", neutralButtonClick)
            show()
        }
    }

    fun withCustomStyle(view: View) {
        val builder = AlertDialog.Builder(this, R.style.AlertDialogCustom)
        with(builder) {
            setTitle("Androidly Alert")
            setMessage("We have a message")
            setPositiveButton("OK", DialogInterface.OnClickListener(function = positiveButtonClick))
            setNegativeButton(R.string.no, negativeButtonClick)
            setNeutralButton("Maybe", neutralButtonClick)
            show()
        }
    }

    fun withButtonCentered(view: View) {
        val alertDialog = AlertDialog.Builder(this).create()
        alertDialog.setTitle("Alert")
        alertDialog.setMessage("Message")

        alertDialog.setButton(
            AlertDialog.BUTTON_POSITIVE, "Yes"
        ) { dialog, which -> dialog.dismiss() }

        alertDialog.setButton(
            AlertDialog.BUTTON_NEGATIVE, "No"
        ) { dialog, which -> dialog.dismiss() }
        alertDialog.show()

        val btnPositive = alertDialog.getButton(AlertDialog.BUTTON_POSITIVE)
        val btnNegative = alertDialog.getButton(AlertDialog.BUTTON_NEGATIVE)

        val layoutParams = btnPositive.layoutParams as LinearLayout.LayoutParams
        layoutParams.weight = 10f
        btnPositive.layoutParams = layoutParams
        btnNegative.layoutParams = layoutParams
    }

    @SuppressLint("MissingInflatedId")
    fun withEditText(view: View){
        val builder = AlertDialog.Builder(this)
        val inflater = layoutInflater
        builder.setTitle("With EditText")
        val dialogLayout = inflater.inflate(R.layout.alert_dialog_with_edittext, null)
        val editText = dialogLayout.findViewById<EditText>(R.id.editText)
        builder.setView(dialogLayout)
        builder.setPositiveButton("OK") { dialogInterface, i ->
            Toast.makeText(
                applicationContext,
                "EditText is ${editText.text}",
                Toast.LENGTH_SHORT).show()
        }
        builder.show()
    }
}