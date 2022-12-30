fun withDialogMultipleChoiceList(view: View) 
{ 
    val items = arrayOf("Apple", "Orange", "Banana", "Watermelon") 
    val selectedList = ArrayList() 
    val builder = AlertDialog.Builder(this)
    builder.setTitle("Dialog Box With List")
    builder.setMultiChoiceItems(items, null) { dialog, which, isChecked -> 
        if (isChecked) { 
            selectedList.add(which) 
        } else if (selectedList.contains(which)) 
        { 
            selectedList.remove(Integer.valueOf(which)) 
        }
    }
    builder.setPositiveButton("DONE") { dialogInterface, i -> 
        val selectedStrings = ArrayList() 
        for (j in selectedList.indices) { 
            selectedStrings.add(items[selectedList[j]]) 
        }
    }
    builder.show()
    
}

// 10.	[12 Poin] Jelaskan kegunaan fungsi-fungsi berikut berdasarkan kode program berikut
// ini!
// a.	val client = OkHttpClient.Builder().addInterceptor(interceptor).build()
// a : Merupakan method untuk menambahkan interceptor ke client HTTP yang digunakan untuk menambahkan header pada request.
// b.	val retrofit = Retrofit.Builder() .baseUrl(BASE_URL) .client(client)
// b : Merupakan method untuk membuat objek Retrofit yang akan digunakan untuk membuat objek API interface.
// c.	val gson = GsonBuilder() .setLenient() .create()
// c : Merupakan method untuk membuat objek Gson yang akan digunakan untuk mengkonversi JSON ke objek Java.
// d.	val call: Call<List<DataModel>> = ApiClient.getClient.getDataMahasiswa()
// d: Merupakan method interface untuk mewakili pemanggilan API. yang memiliki anotasi get yang menentukan jenis permintaan atau pemanggilan ke URL.

