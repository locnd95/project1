package com.example.project1.api_service

import com.example.project1.helper.BaseUrl
import com.example.project1.model.MovieModel
import retrofit2.Response
import retrofit2.http.GET

interface ApiService  {
    @GET(BaseUrl.END_POINT)
    suspend fun getListMovie () :Response<List<MovieModel>>
}