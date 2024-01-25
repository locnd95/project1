package com.example.project1.repository

import com.example.project1.api_service.ApiService
import com.example.project1.model.MovieModel
import retrofit2.Response

class HomeRepository(private val apiService: ApiService) {
    suspend fun getListMovie() : Response<List<MovieModel>> = apiService.getListMovie()
}