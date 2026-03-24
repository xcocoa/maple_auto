package com.maple.auto.network

import com.maple.auto.network.dto.ScriptDto
import com.maple.auto.network.dto.UsageReport
import okhttp3.ResponseBody
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Path

interface ApiService {

    @GET("scripts")
    suspend fun listScripts(): List<ScriptDto>

    @GET("scripts/{id}/download")
    suspend fun downloadScript(@Path("id") id: String): ResponseBody

    @POST("scripts/{id}/report")
    suspend fun reportUsage(@Path("id") id: String, @Body report: UsageReport)
}
