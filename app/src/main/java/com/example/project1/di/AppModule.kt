package com.example.project1.di

import com.example.project1.api_service.ApiService
import com.example.project1.helper.BaseUrl
import com.example.project1.repository.HomeRepository
import com.example.project1.viewmodel.HomeViewModel
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.create

val repoModel = module {
    single {
        HomeRepository(get())
    }
}

val viewModelModule = module {
    viewModel {
        HomeViewModel(get())
    }
}
val apiModule = module {
    single { providerRetrofit() }
}

fun providerRetrofit(): ApiService =
    Retrofit.Builder()
        .baseUrl(BaseUrl.BASE_URL)
        .addConverterFactory(GsonConverterFactory.create())
        .build()
        .create(ApiService::class.java)
