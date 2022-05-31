package com.example.com

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.com.databinding.ActivityVolumeBolaBinding
import kotlin.math.pow


class VolumeBolaActivity : AppCompatActivity() {

    private lateinit var binding: ActivityVolumeBolaBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityVolumeBolaBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.hitung.setOnClickListener {
            val jari = binding.jari.text.toString()
            val tinggi = binding.tinggi.text.toString()

            if (jari == "") {
                Toast.makeText(
                    this@VolumeBolaActivity,
                    "Masukan Input Jari Jari Alas",
                    Toast.LENGTH_SHORT
                ).show()
            }else  if (tinggi == "") {
                Toast.makeText(
                    this@VolumeBolaActivity,
                    "Masukan Input Tinggi Tabung",
                    Toast.LENGTH_SHORT
                ).show()
            } else {
                val result =  3.14 * jari.toDouble().pow(2.0) * tinggi.toDouble()

                val intent = Intent(this@VolumeBolaActivity, HasilActivity::class.java)
                intent.putExtra(HasilActivity.EXTRA_SHAPES, "Tabung")
                intent.putExtra(HasilActivity.EXTRA_RESULT, result)
                startActivity(intent)

            }
        }
    }
}