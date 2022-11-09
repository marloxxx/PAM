package com.tutorpam.memeify

import android.content.Context
import androidx.annotation.StringRes


object Toaster {
    fun show(context: Context, @StringRes stringId: Int) {
        android.widget.Toast.makeText(context, stringId, android.widget.Toast.LENGTH_SHORT).show()
    }
}