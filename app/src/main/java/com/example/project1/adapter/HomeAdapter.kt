package com.example.project1.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.project1.databinding.HomeItemBinding
import com.example.project1.model.MovieModel

class HomeAdapter(): RecyclerView.Adapter<HomeAdapter.HomeViewHolder>() {
     var list = listOf<MovieModel>()
    inner class  HomeViewHolder( val homeItemBinding: HomeItemBinding) :RecyclerView.ViewHolder(homeItemBinding.root){

    }
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): HomeViewHolder {
        val viewHolder = HomeItemBinding.inflate(LayoutInflater.from(parent.context),parent,false)
        return HomeViewHolder(viewHolder);
    }

    override fun onBindViewHolder(holder: HomeViewHolder, position: Int) {
        val item =list[position]
        holder.homeItemBinding.apply {
            tvTitle.text =item.id.toString()
            tvDescription.text =item.name
//            cardIm


        }
    }

    override fun getItemCount(): Int {
        return list.size
    }
}