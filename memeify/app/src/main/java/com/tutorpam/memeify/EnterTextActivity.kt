package com.tutorpam.memeify

import android.Manifest
import android.app.Activity
import android.content.Intent
import android.graphics.*
import android.graphics.drawable.BitmapDrawable
import android.net.Uri
import android.os.Bundle
import android.os.Environment
import android.util.TypedValue
import android.view.View
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.core.content.PermissionChecker
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import kotlinx.android.synthetic.main.activity_enter_text.*

class EnterTextActivity : Activity(), View.OnClickListener {
    private var viewBitmap: Bitmap? = null
    private var pictureUri: Uri? = null
    private var originalImage = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_enter_text)

        writeTextToImageButton.setOnClickListener(this)
        saveImageButton.setOnClickListener(this)

        originalImage = true

        pictureUri = intent.getParcelableExtra<Uri>(IMAGE_URI_KEY)
        val bitmapWidth = intent.getIntExtra(BITMAT_WIDTH, 100)
        val bitmapHeight = intent.getIntExtra(BITMAT_HEIGHT, 100)

        pictureUri?.let {
            val selectedImageBitmap =
                BitmapResizer.shrinkBitmap(this, it, bitmapWidth, bitmapHeight)
            selectedPictureImageview.setImageBitmap(selectedImageBitmap)
        }
    }

    override fun onClick(v: View) {
        when (v.id) {
            R.id.writeTextToImageButton -> createMeme()
            R.id.saveImageButton -> askForPermission()
            else -> println("No case satisfied")
        }
    }

    private fun askForPermission() {
        @PermissionChecker.PermissionResult val permissionCheck = ContextCompat.checkSelfPermission(
            this,
            Manifest.permission.WRITE_EXTERNAL_STORAGE
        )
        if (permissionCheck != PermissionChecker.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(Manifest.permission.WRITE_EXTERNAL_STORAGE),
                MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE
            )
        } else {
            saveImageToGallery(viewBitmap)
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        if (requestCode == MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE) {
            // If request is cancelled, the result arrays are empty.
            if (grantResults.isNotEmpty() && grantResults[0] == PermissionChecker.PERMISSION_GRANTED) {
                // permission was granted, yay!
                saveImageToGallery(viewBitmap)
            } else {
                Toaster.show(this, R.string.permission_please)
            }
        }
    }

    private fun createMeme() {
        // Get strings to place into image
        val topText = top_text_edittext.text.toString()
        val bottomText = bottom_text_edittext.text.toString()

        if (!originalImage) {
            pictureUri?.let {
                val bm = BitmapResizer.shrinkBitmap(
                    this,
                    it,
                    selectedPictureImageview.width,
                    selectedPictureImageview.height
                )
                selectedPictureImageview.setImageBitmap(bm)
            }
        }

        // get bitmap from imageView and copy to make mutable
        val imageDrawable = selectedPictureImageview.drawable as BitmapDrawable
        viewBitmap = imageDrawable.bitmap
        viewBitmap = viewBitmap!!.copy(viewBitmap!!.config, true)

        // add the text you want to yout bitmap
        viewBitmap?.let {
            addTextToBitmap(it, topText, bottomText)
        }

        // set your imageView to show your newly edited bitmap
        selectedPictureImageview.setImageBitmap(viewBitmap)
        originalImage = false
    }

    private fun addTextToBitmap(viewBitmap: Bitmap, topText: String, bottomText: String) {
        // get dimensions of image
        val bitmapWidth = viewBitmap.width
        val bitmapHeight = viewBitmap.height

        // create a canvas that use the bitmap as its base
        val pictureCanvas = Canvas(viewBitmap)

        // create a paint object with font parameters
        val tf = Typeface.create(HELVETICA_FONT, Typeface.BOLD)

        val textSize =
            TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 18f, resources.displayMetrics)
                .toInt()

        val textPaint = Paint()
        textPaint.textSize = textSize.toFloat()
        textPaint.color = Color.WHITE
        textPaint.typeface = tf
        textPaint.textAlign = Paint.Align.CENTER

        val textPaintOutline = Paint()
        textPaintOutline.isAntiAlias = true
        textPaintOutline.textSize = textSize.toFloat()
        textPaintOutline.color = Color.BLACK
        textPaintOutline.typeface = tf
        textPaintOutline.style = Paint.Style.STROKE
        textPaintOutline.textAlign = Paint.Align.CENTER
        textPaintOutline.strokeWidth = 8f

        val xPos = (bitmapWidth / 2).toFloat()
        var yPos = (bitmapHeight / 7).toFloat()

        pictureCanvas.drawText(topText, xPos, yPos, textPaintOutline)
        pictureCanvas.drawText(topText, xPos, yPos, textPaint)

        yPos = (bitmapHeight - bitmapHeight / 14).toFloat()

        pictureCanvas.drawText(bottomText, xPos, yPos, textPaintOutline)
        pictureCanvas.drawText(bottomText, xPos, yPos, textPaint)
    }

    private fun saveImageToGallery(memeBitmap: Bitmap?){
        if (!originalImage){
            memeBitmap?.let {
                val imageFile = File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), it.toString() + FILE_SUFFIX_JPG)

                try {
                    val fos = FileOutputStream(imageFile)
                    it.compress(Bitmap.CompressFormat.JPEG, 100, fos)
                    fos.flush()
                    fos.close()
                } catch (e: IOException) {
                    e.printStackTrace()
                }

                val mediaScanIntent = Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE)
                mediaScanIntent.data = Uri.fromFile(imageFile)
                sendBroadcast(mediaScanIntent)

                Toaster.show(this, R.string.save_image_success)
            }
        } else {
            Toaster.show(this, R.string.add_meme_message)
        }
    }

    companion object{
        const private val FILE_SUFFIX_JPG = ".jpg"
        const private val HELVETICA_FONT = "Helvetica"
        const private val MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE = 42
    }
}