package com.example.formdatadiri

data class DataDiri(val nim:String, val nama:String, val prodi:String, val tanggalLahir:String, val golonganDarah:String) {
    constructor(data:String):this(data.split(";")[0], data.split(";")[1], data.split(";")[2], data.split(";")[3], data.split(";")[4])
    override fun toString(): String {
        return "$nim;$nama;$prodi;$tanggalLahir;$golonganDarah"
    }
}
