package com.maple.auto.app.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext

private val MapleGreen = Color(0xFF2E7D32)
private val MapleGreenLight = Color(0xFF60AD5E)
private val MapleGreenDark = Color(0xFF005005)

private val LightColorScheme = lightColorScheme(
    primary = MapleGreen,
    onPrimary = Color.White,
    primaryContainer = Color(0xFFC8E6C9),
    onPrimaryContainer = MapleGreenDark,
    secondary = Color(0xFF546E7A),
    onSecondary = Color.White,
    background = Color(0xFFFAFAFA),
    surface = Color.White,
    error = Color(0xFFD32F2F)
)

private val DarkColorScheme = darkColorScheme(
    primary = MapleGreenLight,
    onPrimary = Color.Black,
    primaryContainer = MapleGreenDark,
    onPrimaryContainer = Color(0xFFC8E6C9),
    secondary = Color(0xFF90A4AE),
    onSecondary = Color.Black,
    background = Color(0xFF121212),
    surface = Color(0xFF1E1E1E),
    error = Color(0xFFEF5350)
)

@Composable
fun MapleAutoTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    dynamicColor: Boolean = true,
    content: @Composable () -> Unit
) {
    val colorScheme = when {
        dynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            val context = LocalContext.current
            if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
        }
        darkTheme -> DarkColorScheme
        else -> LightColorScheme
    }

    MaterialTheme(
        colorScheme = colorScheme,
        content = content
    )
}
