package com.example.com

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.com.databinding.ActivityVolumeKubusBinding

class VolumeKubusActivity : AppCompatActivity() {

    private lateinit var binding: ActivityVolumeKubusBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityVolumeKubusBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.hitung.setOnClickListener {
            val sisi = binding.sisi.text.toString()
            if(sisi == "") {
                Toast.makeText(this@VolumeKubusActivity, "Masukan Input Sisi Kubus", Toast.LENGTH_SHORT).show()
            } else {
                val result = sisi.toDouble() * sisi.toDouble() * sisi.toDouble()

                val intent = Intent(this@VolumeKubusActivity, HasilActivity::class.java)
                intent.putExtra(HasilActivity.EXTRA_SHAPES, "Kubus")
                intent.putExtra(HasilActivity.EXTRA_RESULT, result)
                startActivity(intent)
                
            }
        }
    }
}