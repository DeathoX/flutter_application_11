package com.example.com

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.com.databinding.ActivityHasilBinding

class HasilActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHasilBinding

    companion object {
        const val EXTRA_SHAPES = "extra_shape"
        const val EXTRA_RESULT = "extra_result"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityHasilBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val shape = intent.getStringExtra(EXTRA_SHAPES)
        val result = intent.getDoubleExtra(EXTRA_RESULT, 0.0)

        binding.text1.text = "Volume dari ${shape} adalah"
        binding.textHasil.text = "${result} cm\u00B3"
        binding.kembali.setOnClickListener {
            finish()
        }
    }
}