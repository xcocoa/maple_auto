package com.maple.auto.persistence

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.maple.auto.persistence.dao.LogDao
import com.maple.auto.persistence.dao.ScriptDao

@Database(
    entities = [ScriptEntity::class, ScriptLogEntity::class],
    version = 1,
    exportSchema = false
)
abstract class ScriptDatabase : RoomDatabase() {

    abstract fun scriptDao(): ScriptDao

    abstract fun logDao(): LogDao

    companion object {
        private const val DATABASE_NAME = "maple_auto_scripts.db"

        @Volatile
        private var instance: ScriptDatabase? = null

        fun create(context: Context): ScriptDatabase {
            return instance ?: synchronized(this) {
                instance ?: Room.databaseBuilder(
                    context.applicationContext,
                    ScriptDatabase::class.java,
                    DATABASE_NAME
                ).build().also { instance = it }
            }
        }
    }
}
