package com.devb

import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import com.devb.databinding.ActivityCustomShareBinding


class CustomShare : AppCompatActivity() {
    private lateinit var binding: ActivityCustomShareBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityCustomShareBinding.inflate(layoutInflater)
        setContentView(binding.root)

        Log.d("SharedUrl:: ", "URL:"+Intent.ACTION_SEND)
        Log.d("SharedUrl:: ", "Data:"+intent.type)

        intent.getStringExtra(Intent.EXTRA_TEXT)?.let {
            Log.d("SharedUrl:: ", "Data:$it")
            binding.info.text = it;
        }

        binding.cancel.setOnClickListener {
            finish()
        }

        binding.done.setOnClickListener {
            val intent: Intent = Intent(this@CustomShare, MainActivity::class.java)
            startActivity(intent);
            finish()
        }
    }


}