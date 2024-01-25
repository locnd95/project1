package com.example.project1

import android.annotation.SuppressLint
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Adapter
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.project1.adapter.HomeAdapter
import com.example.project1.databinding.ActivityMainBinding
import com.example.project1.databinding.HomeItemBinding
import com.example.project1.viewmodel.HomeViewModel
import org.koin.androidx.viewmodel.ext.android.viewModel

class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding
    private lateinit var homeAdapter: HomeAdapter
    private val mainViewModel: HomeViewModel by viewModel()

    @SuppressLint("NotifyDataSetChanged")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        mainViewModel.listMovie.observe(this) { lst ->

            homeAdapter = HomeAdapter()
            binding.homeLst.layoutManager =
                LinearLayoutManager(this@MainActivity, RecyclerView.VERTICAL, false)
            binding.homeLst.adapter = homeAdapter
            homeAdapter.list = lst
            homeAdapter.notifyDataSetChanged()

        }

    }
}