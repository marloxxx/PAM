package com.example.formdatadiri

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import androidx.fragment.app.Fragment

class MainFragment:Fragment() {
    private lateinit var fileName: EditText
    private lateinit var nim : EditText
    private lateinit var nama : EditText
    private lateinit var prodi : Spinner
    private lateinit var buttonTanggalLahir : Button
    private lateinit var golonganDarah : Spinner
    private lateinit var buttonSimpan : Button
    private lateinit var buttonLihat : Button
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val view = inflater.inflate(R.layout.fragment_main, container, false)
        fileName = view.findViewById(R.id.editFileName)
        nim = view.findViewById(R.id.editNim)
        nama = view.findViewById(R.id.editNama)
        prodi = view.findViewById(R.id.spinnerProdi)
        buttonTanggalLahir = view.findViewById(R.id.buttonTanggalLahir)
        golonganDarah = view.findViewById(R.id.spinnerGolonganDarah)

// set data prodi
        val listProdi = arrayOf("Teknik Elektro", "Sistem Informasi", "Informatika", "Teknologi Informasi", "Teknologi Komputer", "Teknologi Rekayasa Perangkat Lunak", "Manajemen Rekayasa", "Teknik Bio Proses")
// set data golongan darah
        val listGolonganDarah = arrayOf("A", "B", "AB", "O")
        prodi.adapter = context?.let { ArrayAdapter(it, android.R.layout.simple_spinner_dropdown_item, listProdi) }
        golonganDarah.adapter = context?.let { ArrayAdapter(it, android.R.layout.simple_spinner_dropdown_item, listGolonganDarah) }

        buttonTanggalLahir.setOnClickListener {
            val datePickerFragment = DatePickerFragment()
            datePickerFragment.show(childFragmentManager, "datePicker")
        }

        buttonSimpan = view.findViewById(R.id.buttonSimpan)
        buttonSimpan.setOnClickListener {
            val fileName = fileName.text.toString()
            val nim = nim.text.toString()
            val nama = nama.text.toString()
            val prodi = prodi.selectedItem.toString()
            val tanggalLahir = buttonTanggalLahir.text.toString()
            val golonganDarah = golonganDarah.selectedItem.toString()
            val dataDiri = DataDiri(nim, nama, prodi, tanggalLahir, golonganDarah)

//  save data
            if (fileName.isNotEmpty()) {
                val fileHelper = FileHelper(context)
                fileHelper.save(fileName, dataDiri)
            }
        }

        buttonLihat = view.findViewById(R.id.buttonLihat)
        buttonLihat.setOnClickListener {
            val fileName = fileName.text.toString()
            if (fileName.isNotEmpty()) {
                val fileHelper = FileHelper(context)
                val dataDiri = fileHelper.read(fileName)
                nim.setText(dataDiri.nim)
                nama.setText(dataDiri.nama)
                prodi.setSelection(listProdi.indexOf(dataDiri.prodi))
                buttonTanggalLahir.text = dataDiri.tanggalLahir
                golonganDarah.setSelection(listGolonganDarah.indexOf(dataDiri.golonganDarah))
            }
        }
        return view
    }

}