package com.example.project1.helper

import android.app.Application
import com.example.project1.di.apiModule
import com.example.project1.di.repoModel
import com.example.project1.di.viewModelModule
import org.koin.core.context.startKoin

class MyApp :Application() {
    override fun onCreate() {
        super.onCreate()
        startKoin {
            listOf(repoModel, viewModelModule, apiModule)
        }
    }
}