package com.example.project1.viewmodel

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.project1.model.MovieModel
import com.example.project1.repository.HomeRepository
import kotlinx.coroutines.launch

class HomeViewModel(private val homeRepository: HomeRepository) : ViewModel() {
    private val _listMovie = MutableLiveData<List<MovieModel>>()
    val listMovie: LiveData<List<MovieModel>>
        get() = _listMovie

    init {
        getListMovie()
    }

    private fun getListMovie() = viewModelScope.launch {
        homeRepository.getListMovie().let { response ->
            if (response.isSuccessful) {
                _listMovie.postValue(response.body())
            } else {
                Log.d("=BUG=", "${response.errorBody()}")
            }
        }
    }
}