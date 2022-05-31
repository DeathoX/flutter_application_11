package com.example.com

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.com.databinding.ActivityVolumePrismaBinding

class VolumePrismaActivity : AppCompatActivity() {
    private lateinit var binding: ActivityVolumePrismaBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityVolumePrismaBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.hitung.setOnClickListener {
            val luasAlas = binding.luasAlas.text.toString()
            val tinggi = binding.tinggi.text.toString()

            if (luasAlas == "") {
                Toast.makeText(
                    this@VolumePrismaActivity,
                    "Masukan Input Luas Alas Kerucut",
                    Toast.LENGTH_SHORT
                ).show()
            } else if (tinggi == "") {
                Toast.makeText(
                    this@VolumePrismaActivity,
                    "Masukan Input Tinggi Kerucut",
                    Toast.LENGTH_SHORT
                ).show()
            } else {
                val result =  3.14 * luasAlas.toDouble() * luasAlas.toDouble()  * tinggi.toDouble()/3

                val intent = Intent(this@VolumePrismaActivity, HasilActivity::class.java)
                intent.putExtra(HasilActivity.EXTRA_SHAPES, "Kerucut")
                intent.putExtra(HasilActivity.EXTRA_RESULT, result)
                startActivity(intent)
            }
        }
    }
}