package com.example.com

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.com.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.prisma.setOnClickListener {
            startActivity(Intent(this@MainActivity, VolumePrismaActivity::class.java))
        }

        binding.kubus.setOnClickListener {
            startActivity(Intent(this@MainActivity, VolumeKubusActivity::class.java))
        }

        binding.balok.setOnClickListener {
            startActivity(Intent(this@MainActivity, VolumeBalokActivity::class.java))
        }

        binding.bola.setOnClickListener {
            startActivity(Intent(this@MainActivity, VolumeBolaActivity::class.java))
        }
    }
}