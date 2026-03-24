.class public Lcn/haorui/sdk/core/utils/CacheUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/CacheUtil$b;
    }
.end annotation


# instance fields
.field private defaultLayoutJson:Ljava/lang/String;

.field private layoutBean:Lcn/haorui/sdk/core/domain/LayoutBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "{\n    \"dpi\": 160,\n    \"style\": [\n        {\n            \"id\": 1,\n            \"type\": 101,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    10,\n                    0,\n                    10\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    10,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 14,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    10\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    1,\n                    0,\n                    10,\n                    4\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 12,\n                    \"color\": \"808080\"\n                }\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    4,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    13,\n                    13,\n                    13,\n                    13\n                ]}\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 2,\n            \"type\": 201,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    10,\n                    10,\n                    10,\n                    10\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 14,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    10,\n                    10,\n                    10\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"margin\": [\n                    10,\n                    10,\n                    0,\n                    10\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    10\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    1,\n                    0,\n                    10,\n                    4\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 12,\n                    \"color\": \"808080\"\n                }\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    12,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    8,\n                    8,\n                    8,\n                    8\n                ]}\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    2,\n                    10,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    1,\n                    3,\n                    1,\n                    3\n                ],\n                \"border\": {\n                    \"size\": 0,\n                    \"color\": \"808080\"\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 11}\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 3,\n            \"type\": 301,\n            \"container\": {\n                \"padding\": [\n                    16,\n                    16,\n                    16,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    15\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    15\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"width\": 138,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 4,\n            \"type\": 401,\n            \"container\": {\n                \"padding\": [\n                    16,\n                    16,\n                    16,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"width\": 138,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ]\n            }, \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"000000\"\n                }\n            }\n        },\n        {\n            \"id\": 5,\n            \"type\": 501,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    16,\n                    0,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    9,\n                    0,\n                    12,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    15,\n                    0,\n                    0,\n                    6\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    14,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    2,\n                    4,\n                    2,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 0,\n                    \"color\": \"808080\"\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 10}\n            },\n            \"creatives\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"childs\": {\n                    \"left\": {\n                        \"margin\": [\n                            0,\n                            2,\n                            0,\n                            0\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    },\n                    \"center\": {\n                        \"margin\": [\n                            0,\n                            0,\n                            0,\n                            0\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    },\n                    \"right\": {\n                        \"margin\": [\n                            0,\n                            0,\n                            0,\n                            2\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    }\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    10\n                ]\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    12,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    15,\n                    15,\n                    15,\n                    15\n                ]}\n            },\n            \"button\": {\n                \"margin\": [\n                    8,\n                    0,\n                    8,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    9,\n                    4,\n                    9\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 13,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        }\n    ]\n}"

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/CacheUtil;->defaultLayoutJson:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/core/utils/CacheUtil$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/CacheUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/utils/CacheUtil$b;->a:Lcn/haorui/sdk/core/utils/CacheUtil;

    return-object v0
.end method


# virtual methods
.method public getDefaultLayout()Lcn/haorui/sdk/core/domain/LayoutBean;
    .locals 3

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/CacheUtil;->defaultLayoutJson:Ljava/lang/String;

    const-class v2, Lcn/haorui/sdk/core/domain/LayoutBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/domain/LayoutBean;

    return-object v0
.end method

.method public getTemplateCache(Landroid/content/Context;)Lcn/haorui/sdk/core/domain/LayoutBean;
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/CacheUtil;->layoutBean:Lcn/haorui/sdk/core/domain/LayoutBean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/adsail_cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "adsail_temp.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcn/haorui/sdk/core/domain/LayoutBean;

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/domain/LayoutBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public putTemplateCache(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean;)V
    .locals 2

    iput-object p2, p0, Lcn/haorui/sdk/core/utils/CacheUtil;->layoutBean:Lcn/haorui/sdk/core/domain/LayoutBean;

    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/CacheUtil;->layoutBean:Lcn/haorui/sdk/core/domain/LayoutBean;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "adsail_cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsail_temp.json"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
