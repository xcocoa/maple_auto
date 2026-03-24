package com.maple.auto.persistence

import android.content.ContentProvider
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.content.SharedPreferences
import android.content.UriMatcher
import android.database.Cursor
import android.database.MatrixCursor
import android.net.Uri
import android.os.Bundle

/**
 * ContentProvider that exposes SharedPreferences for cross-process access.
 *
 * URI pattern: content://{applicationId}.preference/prefs/{key}
 */
class SharedPreferenceProvider : ContentProvider() {

    companion object {
        private const val PREFS_NAME = "maple_auto_prefs"
        private const val PATH_PREFS = "prefs"

        private const val CODE_ALL_PREFS = 1
        private const val CODE_PREF_KEY = 2

        private const val COLUMN_KEY = "key"
        private const val COLUMN_VALUE = "value"
        private const val COLUMN_TYPE = "type"

        fun getAuthority(context: Context): String {
            return "${context.packageName}.preference"
        }

        fun getContentUri(context: Context): Uri {
            return Uri.parse("content://${getAuthority(context)}/$PATH_PREFS")
        }

        fun getKeyUri(context: Context, key: String): Uri {
            return Uri.parse("content://${getAuthority(context)}/$PATH_PREFS/$key")
        }
    }

    private lateinit var prefs: SharedPreferences
    private lateinit var uriMatcher: UriMatcher

    override fun onCreate(): Boolean {
        val ctx = context ?: return false
        prefs = ctx.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

        uriMatcher = UriMatcher(UriMatcher.NO_MATCH).apply {
            addURI(getAuthority(ctx), PATH_PREFS, CODE_ALL_PREFS)
            addURI(getAuthority(ctx), "$PATH_PREFS/*", CODE_PREF_KEY)
        }
        return true
    }

    override fun query(
        uri: Uri,
        projection: Array<out String>?,
        selection: String?,
        selectionArgs: Array<out String>?,
        sortOrder: String?
    ): Cursor {
        val cursor = MatrixCursor(arrayOf(COLUMN_KEY, COLUMN_VALUE, COLUMN_TYPE))

        when (uriMatcher.match(uri)) {
            CODE_ALL_PREFS -> {
                for ((key, value) in prefs.all) {
                    cursor.addRow(arrayOf(key, value?.toString() ?: "", getTypeName(value)))
                }
            }
            CODE_PREF_KEY -> {
                val key = uri.lastPathSegment ?: return cursor
                val value = prefs.all[key]
                if (value != null) {
                    cursor.addRow(arrayOf(key, value.toString(), getTypeName(value)))
                }
            }
        }
        return cursor
    }

    override fun insert(uri: Uri, values: ContentValues?): Uri? {
        if (values == null) return null

        val key = values.getAsString(COLUMN_KEY) ?: uri.lastPathSegment ?: return null
        val value = values.getAsString(COLUMN_VALUE)
        val type = values.getAsString(COLUMN_TYPE) ?: "string"

        prefs.edit().apply {
            when (type) {
                "int" -> putInt(key, value?.toIntOrNull() ?: 0)
                "long" -> putLong(key, value?.toLongOrNull() ?: 0L)
                "float" -> putFloat(key, value?.toFloatOrNull() ?: 0f)
                "boolean" -> putBoolean(key, value?.toBooleanStrictOrNull() ?: false)
                else -> putString(key, value)
            }
            apply()
        }

        val ctx = context ?: return null
        val resultUri = getKeyUri(ctx, key)
        ctx.contentResolver.notifyChange(resultUri, null)
        return resultUri
    }

    override fun update(
        uri: Uri,
        values: ContentValues?,
        selection: String?,
        selectionArgs: Array<out String>?
    ): Int {
        val inserted = insert(uri, values)
        return if (inserted != null) 1 else 0
    }

    override fun delete(
        uri: Uri,
        selection: String?,
        selectionArgs: Array<out String>?
    ): Int {
        return when (uriMatcher.match(uri)) {
            CODE_PREF_KEY -> {
                val key = uri.lastPathSegment ?: return 0
                if (prefs.contains(key)) {
                    prefs.edit().remove(key).apply()
                    context?.contentResolver?.notifyChange(uri, null)
                    1
                } else {
                    0
                }
            }
            CODE_ALL_PREFS -> {
                val count = prefs.all.size
                prefs.edit().clear().apply()
                context?.contentResolver?.notifyChange(uri, null)
                count
            }
            else -> 0
        }
    }

    override fun getType(uri: Uri): String {
        return when (uriMatcher.match(uri)) {
            CODE_ALL_PREFS -> "vnd.android.cursor.dir/vnd.maple.auto.preference"
            CODE_PREF_KEY -> "vnd.android.cursor.item/vnd.maple.auto.preference"
            else -> ""
        }
    }

    private fun getTypeName(value: Any?): String {
        return when (value) {
            is Int -> "int"
            is Long -> "long"
            is Float -> "float"
            is Boolean -> "boolean"
            is String -> "string"
            else -> "string"
        }
    }
}
