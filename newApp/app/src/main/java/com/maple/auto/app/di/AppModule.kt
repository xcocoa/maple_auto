package com.maple.auto.app.di

import android.content.Context
import android.content.SharedPreferences
import com.maple.auto.persistence.ScriptDatabase
import com.maple.auto.persistence.dao.LogDao
import com.maple.auto.persistence.dao.ScriptDao
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    @Provides
    @Singleton
    fun provideScriptDatabase(@ApplicationContext context: Context): ScriptDatabase {
        return ScriptDatabase.create(context)
    }

    @Provides
    @Singleton
    fun provideScriptDao(database: ScriptDatabase): ScriptDao {
        return database.scriptDao()
    }

    @Provides
    @Singleton
    fun provideLogDao(database: ScriptDatabase): LogDao {
        return database.logDao()
    }

    @Provides
    @Singleton
    fun provideSharedPreferences(@ApplicationContext context: Context): SharedPreferences {
        return context.getSharedPreferences("maple_auto_prefs", Context.MODE_PRIVATE)
    }
}
