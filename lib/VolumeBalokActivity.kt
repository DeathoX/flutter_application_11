package com.example.com

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.com.databinding.ActivityVolumeBalokBinding

class VolumeBalokActivity : AppCompatActivity() {

    private lateinit var binding: ActivityVolumeBalokBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityVolumeBalokBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.hitung.setOnClickListener {
            val lebar = binding.lebar.text.toString()
            val panjang = binding.panjang.text.toString()
            val tinggi = binding.tinggi.text.toString()

            if (lebar == "") {
                Toast.makeText(this@VolumeBalokActivity, "Masukan Input Lebar Balok", Toast.LENGTH_SHORT).show()
            } else if (panjang == "") {
                Toast.makeText(this@VolumeBalokActivity, "Masukan Input Panjang Balok", Toast.LENGTH_SHORT).show()
            } else if (tinggi == "") {
                Toast.makeText(this@VolumeBalokActivity, "Masukan Input Tinggi Balok", Toast.LENGTH_SHORT).show()
            } else {
                val result = panjang.toDouble() * lebar.toDouble() * tinggi.toDouble()

                val intent = Intent(this@VolumeBalokActivity, HasilActivity::class.java)
                intent.putExtra(HasilActivity.EXTRA_SHAPES, "Balok")
                intent.putExtra(HasilActivity.EXTRA_RESULT, result)
                startActivity(intent)
            }
        }
    }
}