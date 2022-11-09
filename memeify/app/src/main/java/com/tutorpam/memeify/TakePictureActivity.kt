package com.tutorpam.memeify

import android.app.Activity
import android.content.ClipData
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.MediaStore
import android.view.View
import androidx.core.content.FileProvider.getUriForFile
import kotlinx.android.synthetic.main.activity_take_picture.*
import java.io.File

class TakePictureActivity : Activity(), View.OnClickListener {
    private var selectedPhotoPath: Uri? = null

    private var pictureTaken: Boolean = false

    override fun onCreate(savedInstanceState: Bundle?){
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_take_picture)

        pictureImageview.setOnClickListener(this)
        enterTextButton.setOnClickListener(this)

        checkReceivedIntent()
    }

    override fun onClick(v: View){
        when(v.id){
            R.id.pictureImageview -> takePictureWithCamera()
            R.id.enterTextButton -> moveToNextScreen()
            else -> println("No case satisfied")
        }
    }

    private fun takePictureWithCamera(){
        // 1
        val captureIntent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)

        // 2
        val imagePath = File(filesDir, "images")
        val newFile = File(imagePath, "default_image.jpg")
        if(newFile.exists()){
            newFile.delete()
        } else {
            newFile.parentFile?.mkdirs()
        }
        selectedPhotoPath = getUriForFile(this, BuildConfig.APPLICATION_ID + ".fileprovider", newFile)

        // 3
        captureIntent.putExtra(MediaStore.EXTRA_OUTPUT, selectedPhotoPath)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP){
            captureIntent.addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
        } else {
            val clip = ClipData.newUri(contentResolver, "A photo", selectedPhotoPath)
            captureIntent.clipData = clip
            captureIntent.addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
        }

        startActivityForResult(captureIntent, TAKE_PHOTO_REQUEST_CODE)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?){
        super.onActivityResult(requestCode, resultCode, data)

        if (requestCode == TAKE_PHOTO_REQUEST_CODE && resultCode == RESULT_OK){
            setImageViewWithImage()
        }
    }

    private fun setImageViewWithImage(){
        val photoPath: Uri = selectedPhotoPath ?: return
        pictureImageview.post{
            val pictureBitmap = BitmapResizer.shrinkBitmap(
                this@TakePictureActivity,
                photoPath,
                pictureImageview.width,
                pictureImageview.height
            )
            pictureImageview.setImageBitmap(pictureBitmap)
        }
        lookingGoodTextView.visibility = View.VISIBLE
        pictureTaken = true
    }

    private fun moveToNextScreen(){
        if(pictureTaken){
            val nextScreenIntent = Intent(this, EnterTextActivity::class.java).apply{
                putExtra(IMAGE_URI_KEY, selectedPhotoPath)
                putExtra(BITMAT_WIDTH, pictureImageview.width)
                putExtra(BITMAT_HEIGHT, pictureImageview.height)
            }
            startActivity(nextScreenIntent)
        } else {
            Toaster.show(this, R.string.select_a_picture)
        }
    }

    private fun checkReceivedIntent(){
        val imageReceivedIntent = intent
        val intentAction = imageReceivedIntent.action
        val intentType = imageReceivedIntent.type

        if (Intent.ACTION_SEND == intentAction && intentType != null){
            if (intentType.startsWith(MIME_TYPE_IMAGE)){
                selectedPhotoPath = imageReceivedIntent.getParcelableExtra<Uri>(Intent.EXTRA_STREAM)
                setImageViewWithImage()
            }
        }
    }

    companion object{
        const val MIME_TYPE_IMAGE = "image/"
        const val TAKE_PHOTO_REQUEST_CODE = 1
    }
}